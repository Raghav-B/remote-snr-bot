export LC_ALL="en_SG.utf8"
gnome-terminal -- bash -c "ssh pi@192.168.43.232 -t 'export DISPLAY=:0; ./Desktop/pi_workspace/src/03-03-01_alexplaydespacito/pi_bash_files/lidar_node.bash' && bash"
sleep 20s
gnome-terminal -- bash -c "export ROS_MASTER_URI=http://192.168.43.232:11311 && export ROS_IP=192.168.43.96 && rosrun rviz rviz -d ~/despacito_ros/src/03-03-01_alexplaydespacito/rplidar_ros/rviz/slam.rviz && bash"
