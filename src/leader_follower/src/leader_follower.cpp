#include <cmath>
#include <vector>
#include <string>
#include <fstream>
#include <sstream>
#include <iostream>

#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <gazebo_msgs/ModelStates.h>
#include <visualization_msgs/Marker.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

class Quaternion{
public:
  double w;
  double x;
  double y;
  double z;

  Quaternion(double roll, double pitch, double yaw)
  {
    double c1 = cos(yaw / 2);
    double c2 = cos(pitch / 2);
    double c3 = cos(roll / 2);
    double s1 = sin(yaw / 2);
    double s2 = sin(pitch / 2);
    double s3 = sin(roll / 2);

    w = c1*c2*c3 - s1*s2*s3;
    x = s1*s2*c3 + c1*c2*s3;
    y = s1*c2*c3 + c1*s2*s3;
    z = c1*s2*c3 - s1*c2*s3;
  }
};

class Follower
{
private:
    std::string name;
    std::string leaderName;

    geometry_msgs::Pose pose;
    geometry_msgs::Pose leaderPose;

    double safeDistance;

	ros::NodeHandle nodeHandle;
	ros::Subscriber modelStateSubscriber;

    MoveBaseClient actionClient;

public:
    Follower(std::string follower_name, std::string leader_name, double safe_distance, std::string client_name, bool spin)
                : actionClient(client_name, spin)
    {
        name = follower_name;
        leaderName = leader_name;
        safeDistance = safe_distance;

        //wait for the action server to come up
        while(ros::ok() && !actionClient.waitForServer(ros::Duration(5.0))){
            ROS_INFO("Waiting for the move_base action server to come up");
        }

        modelStateSubscriber = nodeHandle.subscribe("/gazebo/model_states",1,&Follower::follow,this);
    }
    void follow(const gazebo_msgs::ModelStatesPtr& states)
    {
        bool pose_found = false;
        bool leader_pose_found = false;

        for(unsigned i = 0; i < (states -> name).size(); i++)
        {
            if (name.compare((states -> name).at(i)) == 0)
                {
                pose = (states -> pose).at(i);
                pose_found = true;
            }
            if (leaderName.compare((states -> name).at(i)) == 0)
            {
                leaderPose = (states -> pose).at(i);
                leader_pose_found = true;
            }
        }
        if (!pose_found){
            std::cout << name << " not found among /gazebo/model_states" << std::endl;
            return;
        }
        if (!leader_pose_found){
            std::cout << leaderName << " not found among /gazebo/model_states" << std::endl;
            return;
        }

        double distance = sqrt((pose.position.y - leaderPose.position.y) * (pose.position.y - leaderPose.position.y)
                               + (pose.position.x - leaderPose.position.x) * (pose.position.x - leaderPose.position.x));

        if (distance > safeDistance + 1.0) {
            move_base_msgs::MoveBaseGoal goal;

            goal.target_pose.header.frame_id = "map";
            goal.target_pose.header.stamp = ros::Time::now();

            float theta = atan2(pose.position.y - leaderPose.position.y, pose.position.x - leaderPose.position.x);

            goal.target_pose.pose.position.x = leaderPose.position.x + safeDistance * cos(theta);
            goal.target_pose.pose.position.y = leaderPose.position.y + safeDistance * sin(theta);

            Quaternion q(0.0, theta, 0.0);

            goal.target_pose.pose.orientation.x = q.x;
            goal.target_pose.pose.orientation.y = q.y;
            goal.target_pose.pose.orientation.z = q.z;
            goal.target_pose.pose.orientation.w = q.w;

            ROS_INFO("Sending goal");
            actionClient.sendGoal(goal);

            actionClient.waitForResult();

            if (actionClient.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
                ROS_INFO("The follower is following the leader");
            else
                ROS_INFO("The follower appears to no longer need the leader's validation");
        }
    }
};
int main(int argc, char *argv[])
{
	ros::init(argc,argv,"leader_follower");

	Follower follower(argv[1], argv[2], std::stof(argv[3]), "husky_follower/move_base", true);
	
	ros::spin();
	return 0;
}
