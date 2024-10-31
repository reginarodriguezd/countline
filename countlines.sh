#!/bin/bash

for FILE in "$1"; do
if [[ -f $FILE ]]; then
countlin=$(wc -l < "$FILE")

if ((countlin == 0 )); then
echo "$FILE has 0 lines."
elif ((countlin == 1 )); then
echo "$FILE has 1 line."
else
echo "$FILE has $countlin lines."
fi
else
echo "$FILE is not valid, check it."
fi
done
