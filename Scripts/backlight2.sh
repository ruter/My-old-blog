#!/bin/bash
echo "Enter a value:"
read s
sudo setpci -s 00:02.0 F4.B=$s