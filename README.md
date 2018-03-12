# drone_controller
Attitude control loop for a simple path with PID controller

Simulate the quadrotor dynamics and control using the matlab simulato. The simulator relies on the numerical solver ode45. The tasks include:

Trajectory Generator
Implemented two trajectory generators that generate a circle and a diamond trajectories. In order to specify the trajectory in the simulator, you will need to change the
variable trajhandle. trajhandle is the name of a function that takes in current time t and current quadrotor number qn and returns a struct of desired state as a function of time.
The struct desired state has 5 fields, which are pos, vel, acc, yaw and yawdot. For a proper trajectory, you need to specify pos, vel and acc, whereas yaw and yawdot can be left as 0. This is because we are assuming that we don’t change our yaw angle.

• circle.m
A helix in the xy plane of radius 5m centered about the point (0;0;0) starting at the point (5;0;0). The z-coordinate should start at 0 and end at 2:5. The helix goes counter-clockwise.

• diamond.m
A Quadrilateral of a given size with corners at for example (0;0;0), (0; p2; p2), (0; 0; 2p2), and (0; -p2; p2) when projected into the yz plane, and an x coordi- nate starting at 0 and ending at 1, where p2 could be some arbitrary integer value, for example, you can assume p2 is 1. The quadrotor should start at (0;0;0) and end at (1;0;0).

## Controller
Implement a controller in file controller.m that makes sure that the quadrotor follows the desired trajectory. This controller will be used again in the following phases.
The controller takes in a cell struct qd, current time t, current quadrotor number qn and quadrotor parameters params and outputs thrust F, moments M, desired thrust, roll, pitch
and yaw trpy and derivatives of desired roll, pitch and yaw drpy.qd is a cell array contains structs for each quadrotor. This means qdfqng contains all the information (position, velocity, euler angles and etc.) about quadrotor number qn. 
