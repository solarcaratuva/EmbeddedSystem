# UVA Solar Car Team Electrical Team - Embedded System Subgroup
The embedded system sub-group focuses on developing the embedded system for the solar car that controls the CAN bus, driver interface and BPS (Battery Management System). This repository contains all of the design files necessary to implement the electrical control systems necessary for the Solar Car project.

## ECU
The ECU is the primary controller for the majority of systems, including motor control, battery monitoring, driver interface, and MPPT interface. The PCB contains circuitry for interfacing buttons and switches on driver interface, high-current lights and horn, as well as

**!important!**
Not all pins are 12V or even 5V compatible. Certain pins connect directly to the teensy with no protection.

* signal: name of IO signal in Eeschema (may or may not also be the net name)
* voltage: the voltages the pin is designed for
* direction: The direction of the signal relative to the ECU
* description: description of the signal

### User interface input (control)
These pins are used for allowing the driver to command the vehicle. All but the UART pins are 12V logic. To reduce the number of pins required on the MCU, we chose to wire 3 way position switches such that the end contacts connect to the rails and the center contact floats with a resistor divider to ensure the voltage is approximately VCC/2 when the switch is in the middle position.

|      signal     | pin  | voltage  | direction |                            description                               |
|:---------------:|:----:|:--------:|:---------:|:--------------------------------------------------------------------:|
| BRAKE_CTRL      |  20  | 0 - 12V  |  input    | brake potentiometer, used to implement regen                         |
| REGEN_CTRL      |  17  | 0 - 12V  |  input    | regen potentiometer, used to set max regen percentage                |
| GEARSHIFT_CTRL  |  14  | 0 - 12V  |  input    | 3 way position switch. 12V = forward, 6V = neutral, 0V = reverse     |
| TURNSIG_CTRL    |  15  | 0 - 12V  |  input    | 3 way position switch. 12V = forward, 6V = neutral, 0V = reverse     |
| THROTTLE_CTRL   |  16  | 0 - 12V  |  input    | throttle potentiometer, the gas petal                                |
| STEER_CTRL      |21(A7)| 0 - 12V  |  input    | potentiometer on steering wheel, may be used for differential throttle control |
| HAZARD_CTRL     |  16  | 0 - 12V  |  input    | pushbutton used to activate hazard lights, toggles on changing edge  |
| DOWN_CTRL       |  26  | 0 - 12V  |  input    | GUI navigation pushbutton                                            |
| UP_CTRL         |  27  | 0 - 12V  |  input    | GUI navigation pushbutton                                            |
| SEL_CTRL        |  28  | 0 - 12V  |  input    | GUI navigation pushbutton                                            |
| KILL_SENSE      |   2  | 0 - 12V  |  input    | used to detect if the power engaging the relays has been cut         |
| HAZARD_LED      |  25  | 0 - 12V  |  output   | connected to hazard button LED                                       |
| UART_1_RX       |   0  | 0 - 3.3V |  input    | used for Nextion 3.2" LCD                                            |
| UART_1_TX       |   1  | 0 - 3.3V |  output   | used for Nextion 3.2" LCD                                            |

### Serial interface IO
These pins are used for communicating with various peripherals, components, and subsystems within the car. CAN0 is reserved for the BMS, while CAN1 is used for all less critical systems. UART pins are for future use.

|      signal     |  pin    | voltage  | direction |                            description                               |
|:---------------:|:-------:|:--------:|:---------:|:--------------------------------------------------------------------:|
| CAN0_H          |         | 0 - 5V   | CAN high  | connected to CAN0 peripheral on Teensy 3.6 through MCP2562           |
| CAN0_L          |         | 0 - 5V   | CAN low   | connected to CAN0 peripheral on Teensy 3.6 through MCP2562           |
| CAN1_H          |         | 0 - 5V   | CAN high  | connected to CAN1 peripheral on Teensy 3.6 through MCP2562           |
| CAN1_L          |         | 0 - 5V   | CAN low   | connected to CAN1 peripheral on Teensy 3.6 through MCP2562           |
| UART_3_RX       |    7    | 0 - 3.3V |  input    | reserved for future use                                              |
| UART_3_TX       |    8    | 0 - 3.3V |  output   | reserved for future use                                              |
| UART_6_RX       |   47    | 0 - 3.3V |  input    | reserved for future use                                              |
| UART_6_TX       |   48    | 0 - 3.3V |  output   | reserved for future use                                              |


### Lights and Horn
These pins are capable of high currents (up to 5A distributed among the 4 outputs)

|      signal     |   pin    | voltage  | direction |                            description                               |
|:---------------:|:--------:|:--------:|:---------:|:--------------------------------------------------------------------:|
| HORN            |    57    | 0 - 12V  |   output  | high power output for car horn (can only source current)             |
| HEADLIGHTS      |    42    | 0 - 12V  |   output  | high power output for headlights (can only source current)           |
| BRAKELIGHTS     |    56    | 0 - 12V  |   output  | high power output for brakelights (can only source current)          |
| STROBE          |    6     | 0 - 12V  |   output  | high power output for strobelight (can only source current)          |
| RIGHT_BLINKERS  |    41    | 0 - 12V  |   output  | high power output for right blinkers (can only source current)       |
| LEFT_BLINKERS   |    40    | 0 - 12V  |   output  | high power output for left blinkers (can only source current)        |
| HORN_CTRL       |    22    | 0 - 12V  |   input   | high power input for horn                                            |
| HEADLIGHT_CTRL  |    23    | 0 - 12V  |   input   | high power input for headlights                                      |
| BRAKE_CTRL      |    20    | 0 - 12v  |   input   | analog input for brakes (used for regen)                             |

### Motor control
The motor can be interfaced via UART, CAN, and GPIO. As of now, we do not have any API or knowledge of how to interface the motor over UART, as it is not documented. However it is possible to decompile the android app and reverse engineer whatever the app implements. For now, we are using CAN to retrieve important parameters from the motor such as voltage, current, RPM, throttle, and error codes. The motor only outputs messages over CAN, and does not interpret them.

The table below holds true for both `MOTOR_R*` and `MOTOR_L*` signals.
NOTE: all node names in the table below are preceded with `MOTOR_R*` and `MOTOR_L*`!

|      signal     | pin (L) | pin (R) |  voltage   | direction |                               description                            |
|:---------------:|:--------|:-------:|:----------:|:---------:|:--------------------------------------------------------------------:|
| REGEN_EN        |   50    |   53    |   0 - 12V  |   output  | enables regenerative braking on motor controller                     |
| REGEN           | 36(pwm) | 37(pwm) |   0 - 5V   |   output  | analog output sets regen level when throttle is disabled (????)      |
| THROTTLE        | 35(pwm) | 38(pwm) |   0 - 5V   |   output  | sets throttle when FWD_EN or REV_EN are enabled.                     |
| ECO_EN          |   49    |   39    |   0 - 12V  |   output  | Reduces maximum power of motor controller                            |
| METER           |   A11   |   A10   |   0 - 12V  |   input   | analog output from motor controller (????)                           |
| FWD_EN          |   55    |   52    |   0 - 12V  |   output  | forward enable                                                       |
| REV_EN          |   54    |   51    |   0 - 12V  |   output  | reverse enable                                                       |

## Software
At the moment we have bits and pieces of code written but no unified project as of yet. The CAN repository contains experemantal code for interfacing the CAN peripherals on the Teensy as well as development towards a motor driver. The completed motor driver will eventually be refactored into this repo.
