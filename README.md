# lanarvi_docker

## About
TODO 

<details open="open">
<summary>Table of Contents</summary>

- [About](#about)
- [Requirements](#requirements)
- [Installation](#installation)
- [Running the Measurment](#running-the-excercises)
- [Running single Nodes](#running-single-nodes)
</details>

-------------------------------------------------------------------------------------
## Requirements


-------------------------------------------------------------------------------------

## INSTALLATION

### installation in a new catkin workspace 

exemplary installation using with docker build - this will take a while

```sh
docker build  --network=host . -t lanarvi_ros_humble_desktop
```

run the docker 
```sh
docker run -it lanarvi_ros_humble_desktop
```

switch into that workspace
```sh
cd /home/lanarvi_ws
```

source the workspace (install space should have been created during build)
```sh
source install/setup.bash 
```

build the workspace
```sh
colcon build --symlink-install
```
source the workspace
```sh
source install/setup.bash
```

## RUNNING THE MEASUREMENT

### Running without pointcloud pipelin
inside the docker run
```sh
ros2 launch ceol_bringup measurement.launch.py
```

### Running with pointcloud pipelin
inside the docker run
```sh
ros2 launch TODO TODO
```

### launch the data playback of existing rosbags
inside the docker run
```sh
roslaunch TODO TODO
```
