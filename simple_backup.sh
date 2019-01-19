#!/bin/bash

# to create and compress a backup
tar -cvf CHOOSE_FILENAME.tar.gz file1.txt file2.txt
tar -cvf /path/to/CHOOSE_FILENAME.tar.gz /path/to/directory/compress

# to extract a backup
tar -xvf FILENAME.tar.gz
tar -xvf /path/to/FILENAME.tar.gz
