![logo](https://iili.io/J7Lnf9V.jpg)

# Windows Defender Disabler

The script disables Windows Defender by modifying the "Start" entries in the Registry keys associated with Windows Defender services and adjusts the permissions of the Windows Defender Platform directory to facilitate its disabling.

## How to run the script?

First you need to boot into "Safe mode" on Windows using Win+R command and writing "msconfig" as show below.

![Image1](https://iili.io/J7Ln3cx.png)

Then go to "Boot" tab and check "Safe boot" option selecting "Minimal", after that click OK and reboot.

![Image2](https://iili.io/J7LnF8Q.png)

Finally run the powershell script with terminal, and thats all Windows Defender has been disabled successfully from your system.

> To reboot into "Normal mode" just do the same steps and uncheck "Safe mode" option, click OK and you are ready to go.