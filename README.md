# lanarvi_docker

## About
TODO 

<details open="open">
<summary>Table of Contents</summary>

- [About](#about)
- [Requirements](#requirements)
- [Installation](#installation)
- [Running the Measurment](#running-the-measurement)
- [Running single Nodes](#running-single-nodes)
</details>

-------------------------------------------------------------------------------------
## Requirements
arm64 (Jetson) Device with l4t (tested on 35.3.1)

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

### Running with pointcloud pipeline
inside the docker run
```sh
ros2 launch TODO TODO
```

### launch the data playback of existing rosbags
inside the docker run
```sh
ros2 launch TODO TODO
```

## RUNNING TSINGLE NODES 
inside the docker run

CEOL node (CAN-communication)
```sh
ros2 launch ros2_socketcan socket_can_receiver.launch.py && ros2 run ceol_base ceol_node
```

