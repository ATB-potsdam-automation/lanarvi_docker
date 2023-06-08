FROM dustynv/ros:humble-desktop-l4t-r35.3.1

# Install dependencies
RUN python3 -m pip install transform3d
RUN sudo apt update
# conflict in opencv version
RUN sudo apt purge opencv* -y 
RUN sudo apt update
RUN sudo apt upgrade -y
# load lanarvi-specific packages
RUN git clone --recurse-submodules https://github.com/ATB-potsdam-automation/lanarvi.git /home/lanarvi_ws/
RUN git clone -b dashing-devel https://github.com/ros-industrial/ros_canopen.git /home/lanarvi_ws/src/ros_canopen
RUN git clone -b foxy-devel https://github.com/ros-perception/perception_pcl.git /home/lanarvi_ws/src/perception_pcl
RUN cd /home/lanarvi_ws && colcon build --symlink-install --packages-select msgpack11
# docker run -it (image)
# in docker:
# cd /home/lanarvi_ws && source install/setup.bash colcon build --symlink-install (build all packages, not working in dockerfile atm)
# start the measurment via ros2 launch ceol_bringup measurement.launch.py
