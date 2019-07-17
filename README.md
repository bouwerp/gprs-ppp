# GPRS/PPP configuration for Raspberry Pi

A simple shell script to configure a Raspberry Pi for connecting to a GSM network over PPP. The assumption is made that the GSM module is already connected to the main UART, `/dev/ttyAMA0`.

Edit `/boot/config.txt`, and make sure it contains these lines:
```
dtoverlay=pi3-miniuart-bt
enable_uart=1
force_turbo=1
```

(Note, multiple `dtoverlay` lines can exist.)

If the lines needed to have been added, reboot the Pi.

# Running the script

The script should be run as root. To run using sudo, execute it as follows:
```bash
cat gprs-conf.sh | sudo bash
```

A _systemd_ service called _gprs_ should now exist.