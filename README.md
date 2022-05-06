# Sleep-Apnea-Monitoring-System
Sleep Apnea Monitoring System

This project uses an arduino nano 33 ble sense as the microcontroller, max30100 pulse oximeter, and a machine learning model from edge impulse.
This project aims to create a limited channel testing device to monitor potential sleep apnea without the need of a sleep study. This github consists of a arduino zip library, arduino ino file, and a matlab file.
To start you must add the zip library to the arduinos list of library. This library contains all the machine learning model information
Then you must run the ino file to the aruino ble sense. Note the com port that the arduino is connected to.
Then you can open up the matlab file. The matlab file is used to send the data to thingspeak. Make sure to edit the file to your thingspeak channel ID, right com port, and accurate baud rate, which should be set to 115200.
The matlab code will take an average of the snoring prediction and send it every minute do to thingspeak limitations.
