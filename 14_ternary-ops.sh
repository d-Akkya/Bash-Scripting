#!/bin/bash

#cond1 && cond2 || cond3
#Execute cond2 only when cond1 is true else execute cond3

age=22
[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"       #we can directly check the conditions it is a short form of if-else

