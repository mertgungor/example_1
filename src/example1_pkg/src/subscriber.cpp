#include "ros/ros.h"
#include "example1_pkg/zaman.h"
#include <example1_pkg/answer.h>
#include <example1_pkg/Dummy.h>
#include <vector>

void receive(const example1_pkg::Dummy::ConstPtr& ptr){

    example1_pkg::answer ans;
    int max1{0};
    int max2{0};
    unsigned int index;

    for(int i = 0; i < ptr->n; ++i){
        if(ptr->arr[i] > max1){
            max1 = ptr->arr[i];
            index = i;
        }
    }

    for(int i = 0; i < ptr->n; ++i){
        if(ptr->arr[i] > max2 && i!= index && ptr->arr[i] < max1){
            max2 = ptr->arr[i];
            index = i;
        }
    }

    ans.sum = max1 + max2;

    ROS_INFO("max1: %d max2: %d Sum: %d",max1,max2,ans.sum);
    
}

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "subscriber");

    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("dummy_msg",100,receive);

    ros::spin();

    
    return 0;
}
