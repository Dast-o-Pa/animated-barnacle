#!/usr/bin/env bash

shecan show

echo Enter [1] to use shecan and [2] to disable it.
read input

if [ $input -eq 1 ]
then
    sudo -E $(which shecan) set --temporary
elif [ $input -eq 2 ]
then
    sudo -E $(which shecan) restore
else
    echo Invalid input!
fi
