#!/bin/bash

# 1. create a new file
touch newfile.txt
# 2. add text to the file
echo "Hello World" >> newfile.txt
# 3. print file to the console
cat newfile.txt
# 4. create e folder. Make a check if folder exist
if [ ! -d "newfolder" ]; then
  mkdir newfolder
fi
# 6. move your file into the folder
mv newfile.txt newfolder
# 7. rename file
mv newfolder/newfile.txt newfolder/changed.txt
