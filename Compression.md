<h6 align="center">🔏 COMPRESSION</h6>

```bash
    CREATE A TAR NAMED FILE.TAR CONTAINING FILES                                      --> LINUX@ADMIN:~$ TAR CF FILE.TAR FILES
    EXTRACT THE FILES FROM FILE.TAR                                                   --> LINUX@ADMIN:~$ TAR XF FILE.TAR
```

```bash
    CREATE A TAR WITH GZIP COMPRESSION                                                --> LINUX@ADMIN:~$ TAR CZF FILE.TAR.GZ FILES
    EXTRACT A TAR USING GZIP                                                          --> LINUX@ADMIN:~$ TAR XZF FILE.TAR.GZ
```

```bash
    CREATE A TAR WITH BZIP2 COMPRESSION                                               --> LINUX@ADMIN:~$ TAR CJF FILE.TAR.BZ2 FILES
    EXTRACT A TAR USING BZIP2                                                         --> LINUX@ADMIN:~$ TAR XJF FILE.TAR.BZ2
```

```bash
    COMPRESSES WITH BZIP2 COMPRESSION
    LINUX@ADMIN:~$ BZIP2 FILE
    
    EXTRACT THE FILES FROM FILE.BZ2
    LINUX@ADMIN:~$ BUNZIP2 FILE.BZ2
```

```bash
    COMPRESSES FILE AND RENAMES IT TO FILE.GZ                                         --> LINUX@ADMIN:~$ GZIP FILE
    DECOMPRESSES FILE.GZ BACK TO FILE                                                 --> LINUX@ADMIN:~$ GZIP -D FILE.GZ
```

```bash
    COMPRESSES FILE WITH XZ COMPRESSION                                               --> LINUX@ADMIN:~$ TAR CJF FILE.TAR.XZ FILES
    EXTRACT THE FILES FROM FILE.TAR.XZ                                                --> LINUX@ADMIN:~$ TAR XF FILE.TAR.XZ
```

```bash
    COMPRESSES FILE WITH ZIP COMPRESSION                                              --> LINUX@ADMIN:~$ ZIP FILE
    EXTRACT THE FILES FROM FILE.ZIP                                                   --> LINUX@ADMIN:~$ UNZIP FILE
```

```bash
    CREATE A CPIO FILE FROM FILES REGEX WITH 'FILE*'                                  --> LINUX@ADMIN:~$ FIND ./ -NAME 'FILE*' | CPIO -O > BACKUP.CPIO
    EXTRACT THE FILE FROM FILE.CPIO                                                   --> LINUX@ADMIN:~$ CPIO -I < FILE.CPIO
```

```bash
    COMPRESS A CPIO WITH GZIP NAMED BACKUP.CPIO.GZ                                    --> LINUX@ADMIN:~$ FIND ./ -NAME 'arquivo*' | CPIO -O | GZIP > BACKUP.CPIO.GZ
    EXTRAT THE FILE FROM FILE.CPIO.GZ (1)                                             --> LINUX@ADMIN:~$ GUNZIP -C FILE.CPIO.GZ | CPIO -I
    EXTRAT THE FILE FROM FILE.CPIO.GZ (1)                                             --> LINUX@ADMIN:~$ GZIP -D FILE.CPIO.GZ && CPIO -i < FILE.CPIO
```
