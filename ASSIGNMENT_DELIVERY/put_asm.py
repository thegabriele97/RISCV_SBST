#!/usr/bin/env python3

import re, sys, io

src = sys.argv[2]
dst = sys.argv[1]

true_lines = []
idx_append = 0
spaces = ""

found_start = False
found_end = False
with open(dst, "r") as dst_file:
    for line in dst_file:

        matched = re.search(r'^([ \t]*)##- START -##', line)
        if not found_start and matched:
            true_lines.append(line)
            idx_append = len(true_lines)
            found_start = True
            spaces = matched.group(1)
            continue
        elif not found_start or found_end:
            true_lines.append(line)
            continue
    
        matched = re.search(r'\s*##- END -##', line)
        if matched:
            true_lines.append(line)
            found_end = True
            continue

with open(src, "r") as src_file:
    for line in src_file:
        true_lines.insert(idx_append, "{}{}".format(spaces, line))
        idx_append += 1

with open(dst, "w") as dst_file:
    for line in true_lines:
        dst_file.write(line)

# for line in true_lines:
#     print(line, end="")
