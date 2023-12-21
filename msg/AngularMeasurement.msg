# File: motor_interfaces/msg/AngularMeasurement.msg
#
# motor_interfaces: ROS 2 package containing custom messages, services and actions for the control of a BLDC motor using SimpleFOC and MicroROS
# AngularMeasurement.msg: Message definition for reporting the measured angular position, velocity, and acceleration as reported by the position sensor
#
# Description:
# This message reports the angular position, velocity, and acceleration of the motor shaft in radians.
# The position is relative to the polarity of a diametric magnet on the shaft and not the mounting position of the motor.
# Specific characterization and calibration of a "zero" position for the motor mount should be done externally
# The velocity is the simple derivative of the position with respect to time and subject to drift and inconsistencies due to inconsistent sample intervals
# The acceleration measurement is the double derivative of position with respect to time and is subject to high noise and error.
# The acceleration measurement should be considered EXPERIMENTAL and not taken with any truth.
#
# In an error state, the `angular_position`, `angular_velocity`, and `angular_accleration` fields will report -999
#
# Fields:
# uint32    timestamp               Microcontroller timestamp in milliseconds (ms) since start
# float32   angular_position        The angular position of the motor shaft in rad
# float32   angular_position        The angular velocity of the motor shaft as determined by time derivative of position in rad/sec
# float32   angular_acceleration    The angular acceleration of the motor shaft as a time derivative of the angular position in rad/sec/sec.

uint32 timestamp
float32 angular_position
float32 angular_velocity
float32 angular_acceleration