# Vim Cheat Sheet

The stuff that I currently notice myself looking up all time of
forgetting to use. Ideally, this stuff will just become habit, or at
least familiar enough that I can look it up in the Vim help system
as-needed.

## Editing registers

`:let @<register-name>='<ctrl-r><register-name>'` will assign the
register its current contents, which can be edited before the assignment

## Using external commands

`:!cmd` will run `cmd` and display the results

`:<range> !cmd` will run `cmd`, pass the text in `<range>` to its,
`stdin`, and replace `<range>` with the results

`:r !cmd` will run `cmd` and place the results `stdout`/`stderr` on the
next line

`:<range>w !cmd` will run `cmd`, pass the text in `<range>` to its,
`stdin`, and display the results

Typing `!{motion}` in normal mode will pull up the Vim prompt with the
motion translated into a range for a filter command
