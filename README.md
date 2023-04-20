# TALC

TALC is a simple CLI testing tool. It uses corresponding .in and .out files and checks if ./tool < file.in produces the output in file.out. It exits after the first failure.

## Use
Include this repo or talc.sh in your code base and call to it as follows

```
./talc.sh <command or script> <directory with tests>
```

## Output
Passing inputs output a 🔵, failing inputs a 🔴 and a diff of the expected input to the actual output

### Example

All passing 
```
./talc.sh echo.sh ./tests
🔵🔵🔵
```

Last one failing 
```
./talc.sh echo.sh ./tests
🔵🔵🔴
Failure in file: ./tests/3.in
1c1
< Some other data
---
> Some other dat
```

First one failing (exits early)
```
./talc.sh echo.sh ./tests
🔴
Failure in file: ./tests/1.in
1c1
< Some test Data
---
> Som test Data
```
