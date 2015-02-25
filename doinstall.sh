#!/bin/bash

sudo apt-get install libusb-0.1-4 libusb-dev libpcsclite1 libpcsclite-dev libccid pcscd
sudo mkdir /etc/nfc && sudo mkdir /etc/nfc/devices.d/
sudo cp pn532_via_uart2usb.conf /etc/nfc/devices.d/
sudo ./configure --sysconfdir=/etc --prefix=/usr --with-drivers=pn532_uart
sudo make clean all && sudo make all && sudo make install all

