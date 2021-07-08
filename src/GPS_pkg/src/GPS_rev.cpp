#include <ros/ros.h>
#include "ros/package.h"
#include <geometry_msgs/Point.h>
#include <visualization_msgs/Marker.h>
#include <geometry_msgs/PoseStamped.h>
#include "geometry_msgs/Point.h"
#include <std_msgs/String.h>
#include <tf/transform_listener.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Path.h>
#include <sensor_msgs/LaserScan.h>
#include <laser_geometry/laser_geometry.h>
#include <std_msgs/Int32MultiArray.h>
#include <std_msgs/Int16.h>
#include <std_msgs/Int8.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float64.h>

#include <string>
#include <math.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>
#include <errno.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <bitset>
#include <vector>
#include <boost/thread.hpp>
#include <time.h>
#include <fstream>
#include <Eigen/Geometry>
#include <Eigen/Core>
#include <Eigen/Dense>
#include <stdio.h>
#include <fstream>
#include <cstdlib>
#include <algorithm>
#include <iostream>
#include <sstream>
#include <stdlib.h>
#include <string.h>
#include <iomanip>

struct SERIAL
{
    struct termios oldtio;
    int fd, res, done;
    bool serial_ok;
};
SERIAL mySerial;

//GGA Massage
std::string GPS_Lat_Raw = "";
std::string GPS_Lon_Raw = "";
double Affine_lat = 0.0;
double Affine_lon = 0.0;
double Affine_lat_m = 0.0;
double Affine_lon_m = 0.0;
// double scale_lat = 111000 * 0.99788; // in meter
// double scale_lon = 111000 * 0.91668; // in meter
double scale_lat = 110765.515243 * 0.93; // in meter
double scale_lon = 101751.561277 * 0.93; // in meter
double earth_radius_a = 6378137.0;       // in meter
double earth_radius_b = 6356752.314;     // in meter
double f = 1 / 298.256223563;
double e2 = 0.0067; //(earth_radius_a * earth_radius_a - earth_radius_b * earth_radius_b) / (earth_radius_a * earth_radius_a);
double N0 = 0.0;
double N = 0.0;
double first_lat_m = 0.0;
double first_lon_m = 0.0;
double last_lat_m = 0.0;
double last_lon_m = 0.0;
// double last_lat_m = -40.5335;
// double last_lon_m = -50.9305;
double delta_lat_dis = 0.0;
double delta_lon_dis = 0.0;
double odm_lat_m = 0.0;
double odm_lon_m = 0.0;
bool check_init_point = false;
geometry_msgs::PoseStamped EV_Pose_msg;

//VTG Massage
double GPS_Heading_Raw = 0.0;
double GPS_Velocity_Raw = 0.0;
double GPS_Heading = 0.0;
double GPS_Velocity = 0.0;
geometry_msgs::PoseStamped EV_VTG_msg;

//GST Massage
double GPS_Sigma_Heading = 0.0;
double GPS_Sigma_Lat = 0.0;
double GPS_Sigma_Lon = 0.0;
geometry_msgs::PoseStamped EV_GST_msg;

//GSA Massage
double GPS_PDOP = 0.0;
double GPS_HDOP = 0.0;
double GPS_VDOP = 0.0;
geometry_msgs::PoseStamped EV_GSA_msg;

int setBaudrate(int baudrate)
{
    if (baudrate == 50)
        return B50;
    else if (baudrate == 75)
        return B75;
    else if (baudrate == 110)
        return B110;
    else if (baudrate == 134)
        return B134;
    else if (baudrate == 150)
        return B150;
    else if (baudrate == 200)
        return B200;
    else if (baudrate == 300)
        return B300;
    else if (baudrate == 600)
        return B600;
    else if (baudrate == 1200)
        return B1200;
    else if (baudrate == 1800)
        return B1800;
    else if (baudrate == 2400)
        return B2400;
    else if (baudrate == 4800)
        return B4800;
    else if (baudrate == 9600)
        return B9600;
    else if (baudrate == 19200)
        return B19200;
    else if (baudrate == 38400)
        return B38400;
    else if (baudrate == 115200)
        return B115200;
    else
        return B0;
}
int SerialConnect(SERIAL &serial, char *port_name, int speed)
{
    serial.serial_ok = false;

    serial.fd = open(port_name, O_RDWR | O_NOCTTY | O_SYNC);
    if (serial.fd < 0)
    {

        return -1;
    }

    if (tcgetattr(serial.fd, &(serial.oldtio)) < 0)
    {

        return -1;
    }

    cfsetospeed(&serial.oldtio, (speed_t)speed);
    cfsetispeed(&serial.oldtio, (speed_t)speed);

    serial.oldtio.c_cflag |= (CLOCAL | CREAD);
    serial.oldtio.c_cflag &= ~CSIZE;
    serial.oldtio.c_cflag |= CS8;
    serial.oldtio.c_cflag &= ~PARENB;
    serial.oldtio.c_cflag &= ~CSTOPB;
    serial.oldtio.c_cflag &= ~CRTSCTS;

    serial.oldtio.c_iflag &= ~(IGNBRK | BRKINT | PARMRK | ISTRIP | INLCR | IGNCR | ICRNL | IXON);
    serial.oldtio.c_lflag &= ~(ECHO | ECHONL | ICANON | ISIG | IEXTEN);
    serial.oldtio.c_oflag &= ~OPOST;

    serial.oldtio.c_cc[VMIN] = 1;
    serial.oldtio.c_cc[VTIME] = 1;

    if (tcsetattr(serial.fd, TCSANOW, &serial.oldtio) != 0)
    {
        std::cout << "Error from tcgetattr" << std::endl;
        return -1;
    }

    serial.serial_ok = true;

    std::cout << "Serial Opened" << std::endl;

    return 0;
}

// void IMUCallback(const std_msgs::Float64::ConstPtr& Send_IMU_Angle)
// {
//   //ROS_INFO("I heard: [%s]", msg->data.c_str());
//   //ROS_INFO("I heard: [%f]", Send_IMU_Angle->data);
//   EV_Pose_msg.pose.position.z  = Send_IMU_Angle->data;
//
// }

void RevProcess(double receive_period)
{
    int Receive_Package_Size = 256;

    //Declear Parameters
    ros::Rate r_receive(1.0 / receive_period);
    std::vector<char> rev_buf;
    std::vector<std::string> gps_data_buf;
    std::fstream file;
    std::fstream file2;
    std::fstream file3;
    time_t t = time(NULL);
    struct tm tm = *localtime(&t);
    char filename1[128];
    char filename2[128];
    char filename3[128];
    sprintf(filename1, "GPS_Path_0%d%d_%d_%d_%d.txt", tm.tm_mon + 1, tm.tm_mday, tm.tm_hour, tm.tm_min, tm.tm_sec);
    sprintf(filename2, "GPS_Data_0%d%d_%d_%d_%d.csv", tm.tm_mon + 1, tm.tm_mday, tm.tm_hour, tm.tm_min, tm.tm_sec);
    sprintf(filename3, "GPS_affine_0%d%d_%d_%d_%d.csv", tm.tm_mon + 1, tm.tm_mday, tm.tm_hour, tm.tm_min, tm.tm_sec);
    file.open(filename1, std::fstream::app);
    file2.open(filename2, std::fstream::app);
    file3.open(filename3, std::fstream::app);
    double Display_lat = 0;
    double Display_lon = 0;
    // double Center_Lat = 2500.78025;
    // double Center_Lon = 12132.48450;
    double Center_Lat = 25.01275917;
    double Center_Lon = 121.54159700;
    // double Center_Lat = 0.0;
    // double Center_Lon = 0.0;
    //Publisher
    ros::NodeHandle gps;
    ros::Publisher GPS_Pose_Publisher_ = gps.advertise<geometry_msgs::PoseStamped>("Send_Pose", 1000);
    ros::Publisher GPS_VTG_Publisher_ = gps.advertise<geometry_msgs::PoseStamped>("Send_VTG", 1000);
    ros::Publisher GPS_GST_Publisher_ = gps.advertise<geometry_msgs::PoseStamped>("Send_GST", 1000);
    ros::Publisher GPS_GSA_Publisher_ = gps.advertise<geometry_msgs::PoseStamped>("Send_GSA", 1000);

    static int i = 0;

    while (1)
    {
        // EV_Pose_msg.pose.position.x = 1.0; //fake data
        // EV_Pose_msg.pose.position.y = 1.0; //fake data
        // EV_Pose_msg.pose.position.z = 0.0; //fake data
                                           //std::cout<<"=================BBBBBBBBB================="<<std::endl;
                                           
        if (mySerial.serial_ok == true)
        {
            char buff[Receive_Package_Size];
            int readByte = 0;
            readByte = read(mySerial.fd, buff, 1);
            if (readByte > 0)
            {
                rev_buf.push_back(buff[0]);
                i++;
                if (rev_buf[0] != '$')
                {
                    rev_buf.clear();
                    i = 0;
                    std::cout << "=========LOSS encoder=========" << std::endl;
                    //file << "GGGGGGG" << "\n";
                    //std::cout<<"========================================"<<std::endl;
                }
            }

            // if (rev_buf[0] == '$' && rev_buf[1] == 'G' && rev_buf[2] == 'N' && rev_buf[3] == 'G' && rev_buf[4] == 'G' && rev_buf[5] == 'A') //Receive Position
            // {
            //     if (buff[0] == '\n')
            //     {
            //         std::string data(rev_buf.begin(), rev_buf.end());
            //         // std::cout<<"data:"<< data<<std::endl;
            //         //std::stringstream g_data_buf = g_data_buf.str(data);

            //         //split method 1
            //         std::string str2 = data;
            //         while (str2.find(",") != std::string::npos)
            //         {
            //             int found = str2.find(",");
            //             gps_data_buf.push_back(str2.substr(0, found));
            //             str2 = str2.substr(found + 1);
            //             // std::cout<<"gps_data_buf:"<< gps_data_buf[gps_data_buf.size() - 1] << "----"<<std::endl;
            //         }
            //         gps_data_buf.push_back(str2); //GNGLL: gps_data_buf[1] is lat and gps_data_buf[3] is lon , GNRMC:gps_data_buf[3] is lat and gps_data_buf[5] is lon, GNGGA:gps_data_buf[1] is lat and gps_data_buf[3] is lon
            //         if ((gps_data_buf[2].size() == 0 || gps_data_buf[4].size() == 0) || (gps_data_buf[2] == "0" || gps_data_buf[4] == "0"))
            //         { //GPS Disconnected
            //             gps_data_buf[2] = "2500.779709";
            //             gps_data_buf[4] = "12132.48504";
            //             // std::cout<<"gps_data_buf[3]:"<< gps_data_buf[3] <<"gps_data_buf[5]:"<< gps_data_buf[5]<<std::endl;
            //             // std::cout<<"--------------------"<<std::endl;
            //         }

            //         std::cout << "DM Lat: " << gps_data_buf[2] << " , DM Lon: " << gps_data_buf[4] << std::endl;
            //         // std::cout<<"--------------------"<<std::endl;

            //         GPS_Lat_Raw = gps_data_buf[2];
            //         GPS_Lon_Raw = gps_data_buf[4];

            //         Affine_lat = strtold(gps_data_buf[2].data(), NULL) - Center_Lat;
            //         Affine_lon = strtold(gps_data_buf[4].data(), NULL) - Center_Lon;
            //         Affine_lat_m = -((Affine_lat / 60) * scale_lat);
            //         Affine_lon_m = (Affine_lon / 60) * scale_lon;
            //         if (!check_init_point)
            //         {
            //             first_lat_m = Affine_lat_m;
            //             first_lon_m = Affine_lon_m;
            //             check_init_point = true;
            //             std::cout << "first_lat_m:  " << first_lat_m << " , first_lon_m: " << first_lon_m << std::endl;
            //         }
            //         if (Affine_lat_m > 5000 || Affine_lon_m < -5000)
            //         {
            //             Affine_lat_m = last_lat_m;
            //             Affine_lon_m = last_lon_m;
            //         }
            //         EV_Pose_msg.pose.position.x = Affine_lat_m;
            //         EV_Pose_msg.pose.position.y = Affine_lon_m;
            //         odm_lat_m = Affine_lat_m - first_lat_m;
            //         odm_lon_m = Affine_lon_m - first_lon_m;
            //         last_lat_m = Affine_lat_m;
            //         last_lon_m = Affine_lon_m;
            //         //std::cout<<"lat:  "<< Display_lat << "  lon: "<< Display_lon <<std::endl;
            //         std::cout << "lat_m:  " << Affine_lat_m << " , lon_m: " << Affine_lon_m << std::endl;
            //         file << Affine_lat_m << " " << Affine_lon_m << std::endl;
            //         //std::cout<<"========================================"<<std::endl;
            //         i = 0;
            //         gps_data_buf.clear();
            //         rev_buf.clear();
            //     }
            // }

            if (rev_buf[0] == '$' && rev_buf[1] == 'G' && rev_buf[2] == 'N' && rev_buf[3] == 'G' && rev_buf[4] == 'G' && rev_buf[5] == 'A') //Receive Position
            {
                if (buff[0] == '\n')
                {
                    std::string data(rev_buf.begin(), rev_buf.end());
                    // std::cout<<"data:"<< data<<std::endl;
                    //std::stringstream g_data_buf = g_data_buf.str(data);

                    //split method 1
                    std::string str2 = data;
                    while (str2.find(",") != std::string::npos)
                    {
                        int found = str2.find(",");
                        gps_data_buf.push_back(str2.substr(0, found));
                        str2 = str2.substr(found + 1);
                        // std::cout<<"gps_data_buf:"<< gps_data_buf[gps_data_buf.size() - 1] << "----"<<std::endl;
                    }
                    gps_data_buf.push_back(str2); //GNGLL: gps_data_buf[1] is lat and gps_data_buf[3] is lon , GNRMC:gps_data_buf[3] is lat and gps_data_buf[5] is lon, GNGGA:gps_data_buf[1] is lat and gps_data_buf[3] is lon
                    if ((gps_data_buf[2].size() == 0 || gps_data_buf[4].size() == 0) || (gps_data_buf[2] == "0" || gps_data_buf[4] == "0"))
                    { //GPS Disconnected
                        gps_data_buf[2] = "2500.779709";
                        gps_data_buf[4] = "12132.48504";
                        // std::cout<<"gps_data_buf[3]:"<< gps_data_buf[3] <<"gps_data_buf[5]:"<< gps_data_buf[5]<<std::endl;
                        // std::cout<<"--------------------"<<std::endl;
                    }

                    std::cout << "DM Lat: " << std::setprecision(17) << gps_data_buf[2] << " , DM Lon: " << std::setprecision(17) << gps_data_buf[4] << std::endl;
                    // std::cout<<"--------------------"<<std::endl;

                    GPS_Lat_Raw = gps_data_buf[2];
                    GPS_Lon_Raw = gps_data_buf[4];

                    //======================Original=========================
                    // Affine_lat = strtold(gps_data_buf[2].data(), NULL) - Center_Lat;
                    // Affine_lon = strtold(gps_data_buf[4].data(), NULL) - Center_Lon;
                    // Affine_lat_m = -((Affine_lat / 60) * scale_lat);
                    // Affine_lon_m = (Affine_lon / 60) * scale_lon;
                    //=======================================================

                    double lat_float = (strtold(gps_data_buf[2].data(), NULL) - 2500.0) / 60.0;
                    double lon_float = (strtold(gps_data_buf[4].data(), NULL) - 12100.0) / 60.0;

                    //==================dm to dge==============
                    Affine_lat = 25.0 + lat_float;
                    Affine_lon = 121.0 + lon_float;
                    std::cout << "lat:  " << std::setprecision(17) << Affine_lat << " , lon: " << std::setprecision(17) << Affine_lon << std::endl;
                    //=========================================

                    //==================BLH ----> XYZ====================
                    double center_lat_rad = (Center_Lat - 90.0) * M_PI / 180.0;
                    double center_lon_rad = Center_Lon * M_PI / 180.0;
                    double lat_rad = (Affine_lat - 90.0) * M_PI / 180.0;
                    double lon_rad = Affine_lon * M_PI / 180.0;

                    N0 = earth_radius_a / sqrt(1 - (e2 * sin(center_lat_rad) * sin(center_lat_rad)));
                    N = earth_radius_a / sqrt(1 - (e2 * sin(lat_rad) * sin(lat_rad)));

                    double X0 = N0 * cos(center_lat_rad) * cos(center_lon_rad);
                    double Y0 = N0 * cos(center_lat_rad) * sin(center_lon_rad);
                    double X = N * cos(lat_rad) * cos(lon_rad);
                    double Y = N * cos(lat_rad) * sin(lon_rad);

                    double lat_XYZ = X - X0;
                    double lon_XYZ = Y - Y0;
                    double dis_XYZ = sqrt(lat_XYZ * lat_XYZ + lon_XYZ * lon_XYZ);

                    // Affine_lat_m = -lat_XYZ;
                    // Affine_lon_m = lon_XYZ;

                    std::cout << "lat_XYZ:  " << std::setprecision(17) << lat_XYZ << " , lon_XYZ: " << std::setprecision(17) << lon_XYZ << std::endl;
                    std::cout << std::setprecision(17) << dis_XYZ << std::endl;
                    //===================================================

                    //================Equirectangular projection==================
                    double lat_EP = earth_radius_a * 0.9 * ((Affine_lat - 90.0) - (Center_Lat - 90.0)) * M_PI / 180.0; // in meter
                    // double lon_EP = earth_radius_a * (Affine_lon - Center_Lon) * M_PI / 180.0 * cos((Affine_lat - 90.0) * (M_PI / 180.0)); // in meter
                    double lon_EP = earth_radius_a * 0.9 * (Affine_lon - Center_Lon) * M_PI / 180.0 * cos(Affine_lat * (M_PI / 180.0)); // in meter

                    double dis_EP = sqrt(lat_EP * lat_EP + lon_EP * lon_EP);

                    Affine_lat_m = -lat_EP;
                    Affine_lon_m = lon_EP;

                    std::cout << "lat_EP:  " << -lat_EP << " , lon_EP: " << lon_EP << std::endl;
                    std::cout << std::setprecision(17) << dis_EP << std::endl;
                    //============================================================

                    file3 << std::setprecision(8) << GPS_Lat_Raw << "," << std::setprecision(8) << GPS_Lon_Raw << ","
                          << std::setprecision(8) << Affine_lat << "," << std::setprecision(8) << Affine_lon << ","
                          << std::setprecision(8) << lat_XYZ << "," << std::setprecision(8) << lon_XYZ << ","
                          << std::setprecision(8) << -lat_EP << "," << std::setprecision(8) << lon_EP << std::endl;

                    if (!check_init_point)
                    {
                        first_lat_m = Affine_lat_m;
                        first_lon_m = Affine_lon_m;
                        check_init_point = true;
                        std::cout << "first_lat_m:  " << first_lat_m << " , first_lon_m: " << first_lon_m << std::endl;
                    }
                    if (Affine_lat_m > 5000 || Affine_lon_m < -5000)
                    {
                        Affine_lat_m = last_lat_m;
                        Affine_lon_m = last_lon_m;
                    }
                    EV_Pose_msg.pose.position.x = Affine_lat_m;
                    EV_Pose_msg.pose.position.y = Affine_lon_m;
                    odm_lat_m = Affine_lat_m - first_lat_m;
                    odm_lon_m = Affine_lon_m - first_lon_m;
                    last_lat_m = Affine_lat_m;
                    last_lon_m = Affine_lon_m;
                    //std::cout<<"lat:  "<< Display_lat << "  lon: "<< Display_lon <<std::endl;
                    file << Affine_lat_m << " " << Affine_lon_m << std::endl;
                    //std::cout<<"========================================"<<std::endl;
                    i = 0;
                    gps_data_buf.clear();
                    rev_buf.clear();
                }
            }

            if (rev_buf[0] == '$' && rev_buf[1] == 'G' && rev_buf[2] == 'N' && rev_buf[3] == 'V' && rev_buf[4] == 'T' && rev_buf[5] == 'G') // Receive Heading and Velocity
            {
                if (buff[0] == '\n')
                {
                    std::string data(rev_buf.begin(), rev_buf.end());
                    // std::cout<<"data:"<< data<<std::endl;
                    //std::stringstream g_data_buf = g_data_buf.str(data);

                    //split method 1
                    std::string str2 = data;
                    while (str2.find(",") != std::string::npos)
                    {
                        int found = str2.find(",");
                        gps_data_buf.push_back(str2.substr(0, found));
                        str2 = str2.substr(found + 1);
                        // std::cout<<"gps_data_buf:"<< gps_data_buf[gps_data_buf.size() - 1] << "----"<<std::endl;
                    }
                    gps_data_buf.push_back(str2); //GNGLL: gps_data_buf[1] is lat and gps_data_buf[3] is lon , GNRMC:gps_data_buf[3] is lat and gps_data_buf[5] is lon
                    // if(gps_data_buf[7].size() == 0 || gps_data_buf[7] == "0")
                    // {
                    //   gps_data_buf[7] = "0.0";
                    // }

                    GPS_Heading_Raw = strtold(gps_data_buf[1].data(), NULL); // 0 ~ 359 degree from True North
                    if (GPS_Heading_Raw >= 180)
                    {
                        GPS_Heading_Raw = GPS_Heading_Raw - 360.0;
                    }
                    GPS_Velocity_Raw = strtold(gps_data_buf[7].data(), NULL); // unit: km/hr

                    std::cout << "GPS_Heading_Raw:" << GPS_Heading_Raw << " , GPS_Velocity_Raw:" << GPS_Velocity_Raw << std::endl;

                    GPS_Heading = GPS_Heading_Raw * M_PI / 180.0;
                    GPS_Velocity = GPS_Velocity_Raw / 3.6;

                    std::cout << "GPS_Heading: " << GPS_Heading << " , GPS_Velocity:" << GPS_Velocity << std::endl;

                    EV_VTG_msg.pose.position.x = GPS_Velocity;
                    EV_VTG_msg.pose.position.y = GPS_Heading;
                    EV_VTG_msg.pose.position.z = 0.0;

                    //std::cout<<"========================================"<<std::endl;
                    i = 0;
                    gps_data_buf.clear();
                    rev_buf.clear();
                }
            }

            if (rev_buf[0] == '$' && rev_buf[1] == 'G' && rev_buf[2] == 'N' && rev_buf[3] == 'G' && rev_buf[4] == 'S' && rev_buf[5] == 'T') //Receive Sigma
            {
                if (buff[0] == '\n')
                {
                    std::string data(rev_buf.begin(), rev_buf.end());
                    // std::cout<<"data:"<< data<<std::endl;
                    //std::stringstream g_data_buf = g_data_buf.str(data);

                    //split method 1
                    std::string str2 = data;
                    while (str2.find(",") != std::string::npos)
                    {
                        int found = str2.find(",");
                        gps_data_buf.push_back(str2.substr(0, found));
                        str2 = str2.substr(found + 1);
                        // std::cout<<"gps_data_buf:"<< gps_data_buf[gps_data_buf.size() - 1] << "----"<<std::endl;
                    }
                    gps_data_buf.push_back(str2); //GNGLL: gps_data_buf[1] is lat and gps_data_buf[3] is lon , GNRMC:gps_data_buf[3] is lat and gps_data_buf[5] is lon
                    if (gps_data_buf[5].size() == 0 || gps_data_buf[5] == "0")
                    {
                        gps_data_buf[5] = "0.0";
                    }

                    // std::cout<<"gps_data_buf[0]:"<< gps_data_buf[0] <<"gps_data_buf[7]:"<< gps_data_buf[7]<<std::endl;

                    GPS_Sigma_Heading = strtold(gps_data_buf[5].data(), NULL); // unit: meter
                    GPS_Sigma_Lat = strtold(gps_data_buf[6].data(), NULL);     // unit: meter
                    GPS_Sigma_Lon = strtold(gps_data_buf[7].data(), NULL);     // unit: meter

                    std::cout << "GPS_Sigma_Heading: " << GPS_Sigma_Heading << " , GPS_Sigma_Lat: " << GPS_Sigma_Lat << " , GPS_Sigma_Lon: " << GPS_Sigma_Lon << std::endl;
                    std::cout << "--------------------" << std::endl;

                    EV_GST_msg.pose.position.x = GPS_Sigma_Lat;
                    EV_GST_msg.pose.position.y = GPS_Sigma_Lon;
                    EV_GST_msg.pose.position.z = GPS_Sigma_Heading;

                    //file << "aaaa" << "\n";
                    //std::cout<<"========================================"<<std::endl;
                    i = 0;
                    gps_data_buf.clear();
                    rev_buf.clear();
                }
            }

            if (rev_buf[0] == '$' && rev_buf[1] == 'G' && rev_buf[2] == 'N' && rev_buf[3] == 'G' && rev_buf[4] == 'S' && rev_buf[5] == 'A') //Receive Sigma
            {
                if (buff[0] == '\n')
                {
                    std::string data(rev_buf.begin(), rev_buf.end());
                    // std::cout<<"data:"<< data<<std::endl;
                    //std::stringstream g_data_buf = g_data_buf.str(data);

                    //split method 1
                    std::string str2 = data;
                    while (str2.find(",") != std::string::npos)
                    {
                        int found = str2.find(",");
                        gps_data_buf.push_back(str2.substr(0, found));
                        str2 = str2.substr(found + 1);
                        // std::cout<<"gps_data_buf:"<< gps_data_buf[gps_data_buf.size() - 1] << "----"<<std::endl;
                    }
                    gps_data_buf.push_back(str2); //GNGLL: gps_data_buf[1] is lat and gps_data_buf[3] is lon , GNRMC:gps_data_buf[3] is lat and gps_data_buf[5] is lon
                    // if(gps_data_buf[5].size() == 0 || gps_data_buf[5] == "0")
                    // {
                    //   gps_data_buf[5] = "0.0";
                    // }

                    // std::cout<<"gps_data_buf[0]:"<< gps_data_buf[0] <<"gps_data_buf[7]:"<< gps_data_buf[7]<<std::endl;

                    GPS_PDOP = strtold(gps_data_buf[15].data(), NULL); // unit: N/A Position (0.5 ~ 99.99)
                    GPS_HDOP = strtold(gps_data_buf[16].data(), NULL); // unit: N/A (0.5 ~ 99.99)
                    GPS_VDOP = strtold(gps_data_buf[17].data(), NULL); // unit: N/A (0.5 ~ 99.99)

                    EV_GSA_msg.pose.position.x = GPS_PDOP;
                    EV_GSA_msg.pose.position.y = GPS_HDOP;
                    EV_GSA_msg.pose.position.z = GPS_VDOP;

                    std::cout << "GPS_PDOP: " << GPS_PDOP << " , GPS_HDOP: " << GPS_HDOP << " , GPS_VDOP: " << GPS_VDOP << std::endl;

                    //file << "aaaa" << "\n";
                    //std::cout<<"========================================"<<std::endl;
                    i = 0;
                    gps_data_buf.clear();
                    rev_buf.clear();
                }
            }

            else if (buff[0] == '\n')
            {
                i = 0;
                rev_buf.clear();
            }

            // file2 << GPS_Lat_Raw << "," << GPS_Lon_Raw << "," << Affine_lat << "," << Affine_lon << "," << Affine_lat_m << "," << Affine_lon_m // Position Info
            //       << "," << GPS_Velocity << "," << GPS_Heading                                                                                 // Velocity and Heading Info
            //       << "," << GPS_Sigma_Lat << "," << GPS_Sigma_Lon << "," << GPS_Sigma_Heading                                                  // STDEV Info
            //       << "," << GPS_PDOP << "," << GPS_VDOP << "," << GPS_HDOP << "," << std::endl;                                                // Dilition of Precision
        }

        GPS_Pose_Publisher_.publish(EV_Pose_msg);
        GPS_VTG_Publisher_.publish(EV_VTG_msg);
        GPS_GST_Publisher_.publish(EV_GST_msg);
        GPS_GSA_Publisher_.publish(EV_GSA_msg);

        r_receive.sleep();
        // ROS_INFO("Lat: %f ,Lon: %f,IMU: %f", EV_Pose_msg.pose.position.x, EV_Pose_msg.pose.position.y, EV_Pose_msg.pose.position.z);
    }
}

int main(int argc, char **argv)
{
    // //========================================================
    // double scale_lat = 110765.515243 * 0.93; // in meter
    // double scale_lon = 101751.561277 * 0.93; // in meter
    // double Center_Lat = 25.01275917;
    // double Center_Lon = 121.54159700;
    // Affine_lat = 25.01267250;
    // Affine_lon = 121.54166450;
    // //==================BLH ----> XYZ====================
    // double center_lat_rad = (Center_Lat - 90.0) * M_PI / 180.0;
    // double center_lon_rad = Center_Lon * M_PI / 180.0;
    // double lat_rad = (Affine_lat - 90.0) * M_PI / 180.0;
    // double lon_rad = Affine_lon * M_PI / 180.0;

    // N0 = earth_radius_a / sqrt(1 - (e2 * sin(center_lat_rad) * sin(center_lat_rad)));
    // N = earth_radius_a / sqrt(1 - (e2 * sin(lat_rad) * sin(lat_rad)));

    // double X0 = N0 * cos(center_lat_rad) * cos(center_lon_rad);
    // double Y0 = N0 * cos(center_lat_rad) * sin(center_lon_rad);
    // double X = N * cos(lat_rad) * cos(lon_rad);
    // double Y = N * cos(lat_rad) * sin(lon_rad);

    // double lat_XYZ = X - X0;
    // double lon_XYZ = Y - Y0;
    // double dis_XYZ = sqrt(lat_XYZ * lat_XYZ + lon_XYZ * lon_XYZ);
    // std::cout << "lat_XYZ:  " << std::setprecision(17) << lat_XYZ << " , lon_XYZ: " << std::setprecision(17) << lon_XYZ << std::endl;
    // std::cout << std::setprecision(17) << dis_XYZ << std::endl;
    // //===================================================

    // //================Equirectangular projection==================
    // double lat_EP = earth_radius_a * ((Affine_lat - 90.0) - (Center_Lat - 90.0)) * M_PI / 180.0;                           // in meter
    // double lon_EP = earth_radius_a * (Affine_lon - Center_Lon) * M_PI / 180.0 * cos((Center_Lat - 90.0) * (M_PI / 180.0)); // in meter
    // double dis_EP = sqrt(lat_EP * lat_EP + lon_EP * lon_EP);
    // std::cout << "lat_EP:  " << lat_EP << " , lon_EP: " << lon_EP << std::endl;
    // std::cout << std::setprecision(17) << dis_EP << std::endl;
    // //============================================================

    // //======================original==============================
    // double lat_dif = 2500.76155 - 2500.76556;
    // double lon_dif = 12132.49987 - 12132.49582;
    // double lat_org = -((lat_dif / 60) * scale_lat);
    // double lon_org = (lon_dif / 60) * scale_lon;
    // double dis_org = sqrt(lat_org * lat_org + lon_org * lon_org);
    // std::cout << "lat_org:  " << lat_org << " , lon_org: " << lon_org << std::endl;
    // std::cout << std::setprecision(17) << dis_org << std::endl;
    // //===========================================================
    // //========================================================

    ros::init(argc, argv, "GPS");
    ros::Time::init();

    ros::NodeHandle imu;

    if (argc < 3)
    {

        ROS_INFO("usage: [<Device name>] [<Baud rate>]");

        return 0;
    }

    char **argv_buf;
    int Baudrate = std::atoi(argv[2]);
    char *dev_name = argv[1];

    int baudrate = setBaudrate(Baudrate);
    if (SerialConnect(mySerial, dev_name, (speed_t)baudrate) < 0)
    {

        ROS_INFO("Serial failed");
    }

    boost::thread *receive_thread_;
    receive_thread_ = new boost::thread(boost::bind(RevProcess, 0.000001));

    // //Subcriber
    // ros::Subscriber sub = imu.subscribe("Send_IMU", 1000, IMUCallback);

    ros::spin();

    return 0;
}
