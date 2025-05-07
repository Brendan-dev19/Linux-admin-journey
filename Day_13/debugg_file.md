#  Debugging the `greet()` Function in Bash

##  Context
While working on Day 13 of my Linux Admin journey, I attempted to define a `greet()` function inside my `.bashrc` to personalize terminal messages.

##  The Problem

I added this function to `.bashrc`:
```bash
greet() {
  echo "Hello, $1!"
} ```

But every time I ran:
source ~/.bashrc
 
I Got This error: 
-bash: /home/ubuntu/.bashrc: line 121: syntax error near unexpected token `('

## So I went into investigation mode

1) So i checked for typos but that wasnt the issue
2) I Tried to type it manually in my terminal
3) Tried new shell 
 bash --noprofile --norc
And you guessed it the function worked.

# Suspected alias conflict and checked
alias greet
# Output 
alias greet='echo Hello $1'

## Solution 
Removed the lias 
`unalias gree`
#Rewrote the function manually and saved it then ran 
`source ~/.bashrc`

And the code ran properly

#Lesson Learned
Aliases and functions can't share the same name without conflict
If sourcing `.bashrc` breaks, test in a clean environment
Always `unalias` a name before converting into a function
