# Temperature-probes
Some simple control scripts and a binary for a USB temp probe to run in Linux.

## Example Usage:

## Example Output:

```
oilburner 2016/08/01 23:21:03 Temperature 163.40F 73.00C
oilburner 2016/08/01 23:31:03 Temperature 159.91F 71.06C
oilburner 2016/08/01 23:41:03 Temperature 158.45F 70.25C
oilburner 2016/08/01 23:51:03 Temperature 155.53F 68.62C
oilburner 2016/08/02 00:01:03 Temperature 153.84F 67.69C
oilburner 2016/08/02 00:11:04 Temperature 151.81F 66.56C
oilburner 2016/08/02 00:21:04 Temperature 150.24F 65.69C
oilburner 2016/08/02 00:31:04 Temperature 148.78F 64.88C
oilburner 2016/08/02 00:41:04 Temperature 147.43F 64.12C
oilburner 2016/08/02 00:51:04 Temperature 146.19F 63.44C

```

## Known Problems:
  1. The temperature probes which this binary interacts with doesn't have a special serial number for each USB chip. So more than one probe plugged in doesn't work.
