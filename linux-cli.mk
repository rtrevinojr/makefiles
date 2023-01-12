
### linux cli (command line interface) shortcuts ###

#  - \Ctrl + v     --> version

## Process control ##

# - \Ctrl + c     --> interrupt (kill) the current foreground process running in the terminal (SIGINT ignal sent to process)
# - \Ctrl + z     --> suspend the current foregrouind process running in bash (SIGTSTP signal sent to process) use fg <pid> to return process to foreground later
# - \Ctrl + d     --> close bash shell (sends EOF end-of-file marker to bash, & bash exits when it receives this marker) similar to running exit command

## screen control ##

# - \Ctrl + l     --> clear
# - \Ctrl + s     --> stop all output to the screen (useful for disregarding logs to console output without \Ctrl+c
# - \Ctrl + q     --> resume output to the screen after stopping it with \Ctrl+s


## moving cursor ##

# - \Ctrl + a     --> HOME
# - \Ctrl + e     --> END

# - \Ctrl + b     --> go left (backwards) one character
# - \Alt + b     --> go left (backwards) one word

# - \Ctrl + f     --> go right (forwards) one character
# - \Alt + f      --> go right (forwards) one word

# - \Ctrl + xx     --> move between the beginning of the line and the current position of the cursor
                  

## deleting ##

#  - \Ctrl + d     --> delete character under cursor [delete]
#  - \Alt + d     --> delete all characters under cursor on current line
# - \Ctrl + h     --> [backspace] <--

## undo ##

#  - \Alt + _      --> undo last key press 
#  - \Alt + t      --> swap current word with the previous word
#  - \Ctrl + t      --> swap last two characters before cursor 

## Cut/Paste ##

# - \Ctrl + w     --> cut (delete) word (word left of cursor)
# - \Ctrl + k     --> cut til END
# - \Ctrl + u     --> cut til HOME
# - \Ctrl + y     --> paste clipboard (yank)


## history ##

#  - \Ctrl + r     --> search history 
#  - \Ctrl + p     --> previous command within history
#  - \Ctrl + n     --> next command within history
#  - \Alt + r      --> revert any changes to command that was pulled from history after editing
#  - \Ctrl + o     --> run command retrieved with \Ctrl+r
#  - \Ctrl + g     --> exit history searching mode with \Ctrl+r

## Capitalization ##

#  - \Alt + u      --> capitalize every character from cursor til end of current word
#  - \Alt + u      --> uncapitalize every character from cursor til end of current word
#  - \Alt + c      --> capitalize character under cursor and move cursor to end of word


