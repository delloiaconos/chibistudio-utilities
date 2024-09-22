#!/bin/bash

## This tool has been modified from "makelaunch.sh" of ChibiStudio 2023-02
## Salvatore Dello Iacono 2024

if [ $# -ne 2 ]
then
  echo "Usage: makefastlaunch.sh <Project Directory> <Project Name>"
  exit 1
else
  PROJECTPATH="${1//\\//}"
  PROJECTNAME="${2//\\//}"
  DEBUGDIR="debug"
  ELFRELPATH="build/ch.elf"
  
  echo "Creating debug launch configurations for \"$PROJECTNAME\" ..."
  
  ELFNAME=$(echo "$ELFRELPATH" | sed -r "s|/|-|g")
  LAUNCHNAME="$PROJECTNAME - Flash and Run"
  
  mkdir -p $1/$DEBUGDIR
  cat ./arm_flash-and-run.launch.template | sed -r "s|EEEEEEEE|$ELFRELPATH|g" | sed -r "s|PPPPPPPP|$PROJECTNAME|g" > "$PROJECTPATH/$DEBUGDIR/$LAUNCHNAME.launch"
  echo
  echo "Done"
fi
exit 0


