# Vim Cheat Sheet

The stuff that I currently notice myself looking up all time of
forgetting to use.

## Using external commands

`:!cmd` will run `cmd` and display the results

`:<range> !cmd` will run `cmd`, pass the text in `<range>` to its,
`stdin`, and replace `<range>` with the results

`:r !cmd` will run `cmd` and place the results `stdout`/`stderr` on the
next line

`:<range>w !cmd` will run `cmd`, pass the text in `<range>` to its,
`stdin`, and display the results
