<h6 align="center">🔏 SEARCHING</h6>

<h6>SEARCH FOR PATTERN IN FILES</h6>

```bash
LINUX@ADMIN:~$ GREP PATTERN FILES
```

<h6>SEARCH RECURSIVELY FOR PATTERN IN DIR</h6>

```bash
LINUX@ADMIN:~$ GREP -R PATTERN DIR
```

<h6>SEACH FOR PATTERN IN THE OUTPUT OF COMMAND</h6>

```bash
LINUX@ADMIN:~$ COMMAND | GREP PATTERN
```

<h6>FIND ALL INSTANCES OF FILE</h6>

```bash
LINUX@ADMIN:~$ LOCATE FILE
```

<h6>STARTING WITH THE ROOT DIRECTORY, LOOK FOR THE FILE CALLED FILENAME</h6>

```bash
LINUX@ADMIN:~$ FIND / -NAME FILENAME
```

<h6>FIND A FILE CALED FILENAME; THIS ASSUMES YOU HAVE ALREADY USED THE COMMAND UPDATEDB (SEET NEXT)</h6>

```bash
LINUX@ADMIN:~$ LOCATE FILENAME
```

<h6>CREATE OR UPDATE THE DATABASE OF FILES ON ALL FILE SYSTEMS ATTACHED TO THE LINUX ROOT DIRECTORY</h6>

```bash
LINUX@ADMIN:~$ UPDATEDB
```

<h6>SHOW THE SUBDIRECTORY CONTAINING THE EXECUTABLE FILE CALLED FILENAME</h6>

```bash
LINUX@ADMIN:~$ WHICH FILENAME
```

<h6>STARTING WITH THE DIRECTORY CALLED DIR, LOOK FOR AND LIST ALL FILES CONTAINING TEXTSTRINGTOFIND</h6>

```bash
LINUX@ADMIN:~$ GREP TEXTSTRINGTOFIND /DIR
```