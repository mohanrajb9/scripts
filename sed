#!/bin/sh

# replace everything after :. , sort and remove duplicates
sed 's/:.*//' ./passwd | sort -u

# modify directory path and create the modified directory
find /home/mohanrajb -type d -print | sed 's/\/home\/mohanrajb/\/home\/backup\//' | sed 's/^/mkdir /' | sh -x

# using backref
find /home/mohanrajb -type d -print | sed 's/\(\/home\)\/mohanrajb/\1\/backup\//' | sed 's/^/mkdir /' | sh -x

# & for substituion
sed 's/find/&-dinf/' < sed > sed_new

# above changes print the result to stdout, but to make changes to the file itself use -i option
sed -i 's/find-dinf/find/' sed_new

# to provide multiple commands, g indicates global - apply to all matching text instead the fist one.
sed -e 's/hi/hello/g' -e 's/single/multiple/g' file

# incase the editing commands are more then its better to use a file and pass that editing command file
sed -f myedit.sed file

# where myedit.sed contains
# s/hi/hello/g
# s/single/multiple/g
# s/new/wen/g
