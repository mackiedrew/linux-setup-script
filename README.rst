============
Linux Setup Script
============
Used to set up Linux (Primarily Mint 18.1) from a fresh state to a
developer-ready state. Some of this is quite personal but the framework is there
to be easily adapted.

***************
How To Use
***************
Simply execute directly by clicking, now matter the current working directory.
Or in the terminal by using "./setup.sh"

There are some personal aliases setup in the ./aliases.txt file, you should
probably change those to match aliases of your own preference. When the script
is executed the intended behavior is to copy this file into ~/.aliases
(force replacing whatever is there) and adding a line to ~/.bashrc to source it.
