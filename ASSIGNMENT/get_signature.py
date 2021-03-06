#!/usr/bin/env python3

import subprocess, re

logb = subprocess.check_output("./run_rtl_nogui.sh")
log = logb.decode('UTF-8')


matched = re.findall(r'# SBST SIGNATURE\s+LOG: reg\[t3\] = (0x[0-9a-fA-F]*), time\s+([0-9]*ns)', log)
if not matched:
    exit(1)

signature = matched[-1][0]
end_time = matched[-1][1] 

matched = re.findall(r'# SBST CHECKPOINT\s+LOG: time\s+([0-9]*ns)', log)
if not matched:
    exit(1)

start_time = matched[-1]

print('SIGNATURE: {}'.format(signature))
print('DURATION : {} ns'.format(int(end_time[0:len(end_time)-2]) - int(start_time[0:len(start_time)-2])))