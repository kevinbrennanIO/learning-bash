# learning-bash

## Resources 
Complete Beginner https://linuxconfig.org/bash-scripting-tutorial-for-beginners#h18-1-arithmetic-expansion

Beginner https://linuxconfig.org/bash-scripting-tutorial

### Quick Tip:
Execute cd command without any arguments to instantly navigate to your user home directory from any location. Execute cd - to toggle between your lasttwo visited locations. In what directory you end up after executing cd ~ and cd . commands?

### Quick Tip:
Regardless of the script complexity, do not attempt to write your entire script in one go. Slowly develop your script by testing each core line by executing it first on the terminal command line. When successful, transfer it to your shell script.

### Quick Tip:
Enter man tar command to learn more about all tar command line options used within the previous backup.sh script. Try to run the tar command without -option prefix! Does it work?

### Quick Tip:
Never name your private variables using UPPERCASE characters. This is because uppercase variable names are reserved for internal shell variables, and you run a risk of overwriting them. This may lead to the dysfunctional or misbehaving script execution.

### Quick Tip:
When unsure whether your command produced stdout or stderr try to redirect its output. For example, if you are able to redirect its output successfully to a file with 2> notation, it means that your command produced stderr. Conversely, successfully redirecting command output with > notation is indicating that your command produced stdout.

### Quick Tip:
The moment you notice that your script contains two lines of the same code, you may consider to enact a function instead.
