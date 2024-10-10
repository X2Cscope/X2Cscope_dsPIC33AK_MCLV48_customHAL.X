# Model based X2C Blinky demo MCLV-48V-300W and dsPIC33AK128MC106 Motor Control DIM

## 1. INTRODUCTION
This is a minimalistic blinky demo code to show how easy to integrate X2Cscope into a custom firmware. It can be used to test the X2Cscope tool features with dsPIC33A MCU.
This was generated without using MCC and demonstrated the use of the two button switches, potentiometer and two LEDs.

## 2. REQUIREMENTS

### 2.2 Software Tools Used for Testing the firmware
- MPLAB® X IDE **MPLABX v6.20** or VScode
- DFP: **dsPIC33AK-MC_DEV_DFP v1.0.33** Update process: [link](https://microchip.my.site.com/s/article/Programming-and-Debugging-the-dsPIC33A-on-MPLAB-X-IDE-v6-20-and-IPE-v6-20)
- MPLAB® XC16 Compiler **XC-DSC_3.10**
- MPLAB® PICkit™ on board 4 In-Circuit Debugger 

### 2.3 Hardware Tools Required for the Demonstration
- MCLV-48V-300W Inverter Board [(EV18H47A)](https://www.microchip.com/en-us/development-tool/EV18H47A)
- dsPIC33AK128MC106 Motor Control Dual In-line Module [(EV68M17A)](https://www.microchip.com/en-us/development-tool/EV68M17A)
- 24V Power Supply [(AC002013)](https://www.microchipdirect.com/dev-tools/AC002013)

> **_NOTE:_**
> All items listed under the section Hardware Tools Required for the Demonstration are available at [microchip DIRECT](https://www.microchipdirect.com/)

## 3. HARDWARE SETUP
<p style='text-align: justify;'>This section describes hardware setup required for the demonstration.</p>

1. <p style='text-align: justify;'> Insert the dsPIC33AK128MC106 Motor Control DIM into the DIM Interface Connector J8 provided on the MCLV-48V-300W Inverter Board. Make sure the DIM is placed correctly and oriented before going ahead.</p>

    <p align="left">
    <img  src="images/dimconnected.PNG"></p>

2. <p style='text-align: justify;'>	Plug in the 24V power supply to connector J1 provided on the MCLV-48V-300W Inverter Board. Alternatively, the Inverter Board can also be powered through Connector J3.</p>
      <p align="left">
      <img  src="images/mclvpower.png"></p>

3. <p style='text-align: justify;'>The board has an onboard programmer ‘PICkit™ On Board (PKoB4)’ , which can be used for debugging the dsPIC33CK256MP508. To use an on-board programmer/debugger, connect a micro-USB cable between Host PC and Connector J16 provided on the MCLV-48V-300W Inverter Board. Note that the same micro-USB interface creates another UART port for serial communication with the MCU (USB to Dual UART). Example of USB to Dual UART here: https://www.microchip.com/en-us/products/microcontrollers-and-microprocessors/32-bit-mcus/applications-reference-designs-and-solutions/usb-to-dual-uart-bridge </p> 

      <p align="left">
     <img  src="images/mclvpkob4.png"></p>
 

<br />

## 4. SOFTWARE SETUP AND RUN
### 4.1 Setup: MPLAB X IDE and MPLAB XC-DSC Compiler

Install MPLAB X IDE and MPLAB XC-DSC Compiler versions that support the device dsPIC33AK128MC106. 

- MPLAB X IDE installation, refer [link](https://microchipdeveloper.com/mplabx:installation)
- MPLAB XC-DSC Compiler installation steps, refer [link](https://microchipdeveloper.com/XCDSC:installation)
- Update MPLAB X programmer/debugger interface plugins and Device Firmware Packages (DFP) [link](https://microchip.my.site.com/s/article/Programming-and-Debugging-the-dsPIC33A-on-MPLAB-X-IDE-v6-20-and-IPE-v6-20)

### 4.2 Setup: X2Cscope

On PC side SW you can use pyX2Cscope:
https://x2cscope.github.io/pyx2cscope/

Or MPLAB X built-in plug-in:
https://x2cscope.github.io/docs/MPLABX_Plugin.html


### 4.3 RUN
1. Open the project in MPLABX or VScode, then program the device. (Make and program button)
2. LD2 should start to blink.
3. Open MPLAB X X2Cscope plugin or start pyX2Cscope
4. Check serial settings (At the communicator window, setup tab)
5. Connect to the HW (Connection button)
6. Monitor live signals with watch and scope functionalities


## 5.0 Peripheral Connections: 

### IO
| board    | pin  | 
|:--------:|:----:| 
| SW1       |  RD9   |
| SW2	     |  RD10   |
| POT      |  AD1AN10   |
| LED1     |  RD5   |
| LED2     |  RC9   |

### UART settings: 

   **Communication**: For X2C Scope Communication currently UART is used. User needs to select the required UART instance 
   and Configure the UART.

| Baudrate | Databits | Parity | Stopbits |
| -------- | -------- | ------ | -------- |
| 115200   | 8        | none   | 1        |

    _U1RXR = 44;
    _RP43R = 9;

### Other Peripherals   

TMR1 is set to 10kHz interrupt. Model calculation is done in the T1Interrupt.



