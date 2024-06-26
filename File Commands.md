<h6 align="center">🔏 FILE COMMANDS</h6>

<h6>DIRECTORY LISTING</h6>

```bash
ls
```

<h6>LIST FILES IN CURRENT DIRECTORY USING LONG FORMAT</h6>

```bash
ls -L
```

<h6>LIST ALL FILES IN CURENT DIRECTORY IN LONG FORMAT AND DISPLAY IN COLUMNS</h6>

```bash
ls -Lac
```

<h6>LIST FILES IN CURRENT DIRECTORY AND INDICATE THE FILE TYPE</h6>

```bash
ls -f
```

<h6>FORMATTED LISTING WITH HIDDEN FILES</h6>

```bash
ls -al
```

CHANGE DIRECTORY OF DIR

```bash
cd dir
```

CHANGE TO HOME   

```bash
cd
```

CREATE A DIRECTORY DIR 

```bash
mkdir dir
```

SHOW CURRENT DIRECTORY 

```bash
PWD
```

REMOVE A FILE OR DIRECTORY CALLED NAME   

```bash
RM NAME
```

DELETE DIRECTORY DIR 

```bash
RM -R DIR
```

FORCE REMOVE FILE

```bash
RM -F FILE
```

FORCE REMOVE AN ENTIRE DIRECTORY DIR AND ALL IT'S INCLUDED FILES AND SUBDIRECTORIES (USE WITH EXTREME CAUTION)   

```bash
RM -RF DIR
```

COPY FILE1 TO FILE2  

```bash
CP FILE1 FILE2
```

COPY DIR1 TO DIR2; CREATE DIR2 IF IT DOESN'T EXIST 

```bash
CP -R DIR1 DIR2
```

COPY THE FILENAME CALLED FILE TO THE /HOME/DIRNAME DIRECTORY 

```bash
CP FILE /HOME/DIRNAME
```

MOVE THE FILE CALLED FILENAME TO THE /HOME/DIRNAME DIRECTORY 

```bash
MV FILE /HOME/DIRNAME
```

RENAME OR MOVE FILE1 TO FILE2; IF FILE2 IS AN EXISTING DIRECTORY, MOVES FILE1 INTO DIRECTORY FILE2 

```bash
MV FILE1 FILE2
```

CREATE SYMBOLIC LINK LINK TO FILE

```bash
LN -S FILE LINK
```

CREATE OR UPDATE FILE

```bash
TOUCH FILE
```

PLACES STANDARD INPUT INTO FILE

```bash
CAT > FILE
```

DISPLAY THE FILE CALLED FILE

```bash
CAT FILE
```

DISPLAY THE FILE CALLED FILE ONE PAGE AT A TIME, PROCEED TO NEXT PAGE USING THE SPACEBAR 

```bash
MORE FILE
```

OUTPUT THE FIRST 10 LINES OF FILE

```bash
HEAD FILE
```

DISPLAY THE FIRST 20 LINES OF THE FILE CALLED FILE

```bash
HEAD -20 FILE
```

OUTPUT THE LAST 10 LINES OF FILE

```bash
TAIL FILE
```

DISPLAY THE LAST 20 LINES OF THE FILE CALLED FILE

```bash
TAIL -20 FILE
```

OUTPUT THE CONTENTS OF FILE AS IT GROWS, STARTING WITH THE LAST 10 LINES

```bash
TAIL -F FILE
```
