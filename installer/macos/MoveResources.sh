#! /bin/bash
# Work-around to get executable to find resource and doc files
# mkdir -p output//PcPatrEditor/lib/app
# cp -r input/resources output/ > /dev/null
# we run from bin and the executable looks here for the resources
chmod +x input/resources/Keyboards/macOS/xkbswitch
mkdir -p output/PAWS/resources
cp -r input/resources output/PAWS/ > /dev/null
chmod +x output/PAWS/resources/Keyboards/macOS/xkbswitch
#rm -r input/PcPatrEditor/lib/app/resources > /dev/null
#cp -r input/doc output/PAWS > /dev/null
#rm -r input/PcPatrEditor/lib/app/doc > /dev/null
