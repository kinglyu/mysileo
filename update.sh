#!/bin/bash

cd ~/Desktop/Project/code/mysileo
rm Packages Packages.bz2 Packages.gz

dpkg-scanpackages -m . > Packages
bzip2 -k Packages
gzip -c Packages > Packages.gz