#!/bin/bash

echo "$2" > urls/"$1"
git add urls/"$1"
git commit -m "Added $1 -> $2"
git push
