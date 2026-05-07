#! /usr/bin/bash
# Work-around to get exe to find resource and doc files
#cp -r input/resources output/PcPatrEditor/lib/app > /dev/null
# we run from bin and the executable looks here for the resources
cp -r input/resources/* output/PAWS/lib/resources > /dev/null
#rm -r input/PAWS/lib/app/resources > /dev/null
# no doc for PAWS: cp -r input/doc output/PAWS/lib > /dev/null
#rm -r input/PAWS/lib/app/doc > /dev/null
