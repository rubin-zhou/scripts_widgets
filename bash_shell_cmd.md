# Memo of used commands

## Shell 

1. Append text "str" to end of each line.
```bash
$ sed -i "s/$/str/" file.txt
```
2. Shuffle lines of large training text file.
```bash
$ shuf -o output.txt input.txt
```
