#!/bin/bash
./main.sh
sudo apt-get purge  scratch*  gpicview  leafpad  galculator

sudo apt-get autoremove && sudo apt-get autoclean
