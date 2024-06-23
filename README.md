<p align="center"><img src="https://raw.githubusercontent.com/MagicalStrangeQuark/MagicalStrangeQuark/master/assets/tux.svg" width="400"></p>

<p align="center">Small study documentation of <a href="https://www.redhat.com/pt-br/topics/linux">👉 GNU/Linux 👈</a>, studying for <a href="https://www.lpi.org/our-certifications/lpic-1-overview">LPIC-1</a></p>

<p align="center">
    <a href="https://opensource.org/licenses/MIT">
        <img alt="License" src="https://img.shields.io/github/license/MagicalStrangeQuark/Linux">
    </a>
    <a href="#">
        <img alt="Languages" src="https://img.shields.io/github/languages/count/MagicalStrangeQuark/Linux">
    </a>
    <a href="#">
        <img alt="Last Commit" src="https://img.shields.io/github/last-commit/MagicalStrangeQuark/Linux">
    </a>
    <a href="#">
        <img alt="Followers" src="https://img.shields.io/github/followers/MagicalStrangeQuark?style=social">
    </a>
</p>

Linux - História

Licenças

- GPL v2 - Kernel do Linux, por exemplo

- GPL v3

- BSD

- Apache

- MIT

- Creative Commons

GNU e Software Livre - Richard Stalman - 1993

Software Livre -  Liberdades

- Executar como você desejar

- Estudar

- Redistribuir cópias

- Modificar e distribuir cópias das versões modificadas

Filesystem Hierarchy Standard - Year started: 14 February 1994; 28 years ago

<h6>Comandos de Logout</h6>

```bash
logout
```

```bash
exit
```

```bash
Ctrl + D
```

<h5>Desligar o Linux</h5>

halt

echo o > /proc/sysrq-trigger

shutdown -h now

poweroff

init 0

<h5>Reiniciar o Linux</h5>

reboot

echo b > /proc/sysrq-trigger

shutdown -r now

poweroff --reboot

init 6

shuwdown -r 18:00

shutdown -r +30 "Machine will restart in 30 minutes"

shutdown -c "It will not be necessary restart the machine"

<h5>Debian Pacotes</h6>

```bash
apt install tree coreutils bsdutils bsdmainutils net-tools man-db
```

Em que ano a distribuição Debian foi criada? 1993

Qual o nome da distribuição Linux que garante a distribuição de sofwares apenas livres em seu repositório principal? `Debian`

Qual o comando utilizado para retornar para o diretório anterior? `cd -`

Onde estão os shells disponívels? `cat /etc/shells`

Qual é o diretório onde está o arquivo do kernel do Linux? `/boot`

<h5>Principais Variáveis de Ambiente</h5>

É importante conhecer a função de algumas variáveis de ambiente existentes no sistema, as principais são:

<strong>DISPLAY</strong>: Indica às aplicações gráficas onde as janelas deverão ser exibidas. Será estudado no Tópico 106.
<strong>HISTFILE</strong>: Arquivo do histórico de comandos
<strong>HISTFILESIZE</strong>: Quantidade de linhas/comandos armazenados no arquivo de histórico
<strong>HOME</strong>: Indica o diretório do usuário atual
<strong>LOGNAME e USER</strong>: Nome do usuário atual
<strong>PATH</strong>: Diretórios em que o Linux irá procurar por arquivos executáveis
<strong>PS1</strong>: Aparência do prompt do shell.
<strong>PWD</strong>: Diretório atual
<strong>OLDPWD</strong>: Diretório anterior

<h3 align="center">Repositório de Scripts Úteis para GNU/Linux</hh3>

<h4>🧩 Comparação entre Números</h4>

|  PROGRAMAÇÃO |  SHELL    |              SIGNIFICADO            |
| ------------ | --------- | ----------------------------------- |
|      ==      |    -eq    | (equal) Igual à                     |
|      !=      |    -ne    | (not equal) Diferente de            |
|      <       |    -lt    | (less than) Menor que               |
|       >      |    -gt    | (greater than) Maior que            |
|      <=      |    -le    | (less or egual) Menor ou igual à    |
|      >=      |    -ge    | (greater or equal) Maior ou igual à |

<h2>🧩 Comparação entre Strings</h2>

|  PROGRAMAÇÃO |                    SIGNIFICADO                    |
| ------------ | ------------------------------------------------- |
|      =       |   Igual à (isso mesmo apenas um sinal de igual)   |
|      !=      |                   Diferente de                    |
|      -n      |  String existe e não é vazia (apenas um operador) |
|      -z      |    String existe e é vazia (apenas um operador)   |

🧩 Verificando se o arquivo `/etc/profile` existe, sendo ambas as comparações abaixo equivalentes.

3.1. Possibilidade:

```
    ~$: test -f /etc/profile; echo $?
```
3.2. Possibilidade:

```
    ~$: [ -f /etc/profile ]; echo $?
```

<h6>EXEMPLO TR</h6>

```
    ~$: echo 'Hello World,    Testing Trrrrr ! ! !      ! ! !' | tr -s "[:blank:]" | tr "[!]" "[%]"
```

<h6>EXIBE O TEMPO DA EXCUÇÃO DA INSTRUÇÃO</h6>

```
    ~$: time (ls)
```

<h6>mostra os arquivos e grava em temp.txt</h6>

```
    ~$: ls | tee temp.txt
```

<h6></h6>

```
    ~$: cat Fruits.TXT | tr -s "[:blank:]" | uniq --unique --ignore-case | tee FruitsUniq.TXT
```

<h6>EXECUTA O COMANDO APÓS XARGS PARA CADA ELEMENTO DA LISTA</h6>

```
    ~$: cat Person.TXT | xargs echo
```

<h6>REDIRECIONA O QUE O SEGUE COMO SE FOSSE O CONTEÚDO DE UM ARQUIVO TEXTO</h6>

```
    ~$: tr [a-z] [A-Z] <<< test.txt
```

<h6></h6>

```
    ~$: sudo find /var/ -name "*config*" -type d | xargs ls -ld | tee diretorios-config.out
```

<h6>SUPRIMIR LINHAS EM BRANCO OU QUE CONTENHAM APENAS ESPAÇOS</h6>

```
    ~$: ls -l | awk '{print $5}' | sed '/^\s*$/d'
```

## 🔏 PRINTING (USA "+" PARA COLOCAR PERMISOS Y "-" PARA ELIMINAR)

### 👑 START THE PRINT DAEMON
    LINUX@ADMIN:~$ /ETC/RC.D/INIT.D/LPD START
### 👑 STOP THE PRINT DAEMON
    LINUX@ADMIN:~$ /ETC/RC.D/INIT.D/LPD STOP
### 👑 DISPLAY STATUS OF THE PRINT DAEMON
    LINUX@ADMIN:~$ /ETC/RC.D/INIT.D/LPD STATUS
### 👑 DISPLAY JOBS IN PRINT QUEUE
    LINUX@ADMIN:~$ LPQ
### 👑 REMOVE JOBS FROM QUEUE
    LINUX@ADMIN:~$ LPRM
### 👑 PRINT A FILE
    LINUX@ADMIN:~$ LPR
### 👑 PRINTER CONTROL TOOL
    LINUX@ADMIN:~$ LPC
### 👑 PRINT THE MANUAL PAGE CALLED SUBJECT AS PLAIN TEXT
    LINUX@ADMIN:~$ MAN SUBJECT | LPR
### 👑 PRINT THE MANUAL PAGE CALLED SUBJECT AS POSTSCRIPT OUTPUT
    LINUX@ADMIN:~$ MAN -T SUBJECT | LPR
### 👑 START X PRINTER SETUP INTERFACE
    LINUX@ADMIN:~$ PRINTTOO

<h6 align="center">🔏 NETWORK</h6>

    # LIST IP ADDRESSES FOR ALL DEVICES ON THE LOCAL MACHINE                                                                       --> LINUX@ADMIN:~$ IFCONFIG
    # USED TO SET THE PARAMETERS OF THE NETWORK INTERFACE WICH ARE SPECIFIC TO THE WIRELESS OPERATION (FOR EXMAPLE: THE FREQUENCY) --> LINUX@ADMIN:~$ IWCONFIG
    # USED TO DISPLAY SOME ADDITIONAL INFORMATION FROM A WIRELESS NETWORK INTERFACE THAT IS NOT DISPLAYED BY IWCONFIG              --> LINUX@ADMIN:~$ IWLIST
    # PING HOST AND OUTPUT RESULTS                                                                                                 --> LINUX@ADMIN:~$ PING HOST
    # GET WHOIS INFORMATION FOR DOMAIN                                                                                         --> LINUX@ADMIN:~$ WHOIS DOMAIN
    # GET DNS INFORMATION FOR DOMAIN                                                                                           --> LINUX@ADMIN:~$ DIG DOMAIN
    # REVERSE LOOKUP HOST                                                                                                      --> LINUX@ADMIN:~$ DIG -X HOST
    # DOWNLOAD FILE                                                                                                            --> LINUX@ADMIN:~$ WGET FILE
    # CONTINUE A STOPPED DOWNLOAD                                                                                              --> LINUX@ADMIN:~$ WGET -C FILE

<h6 align="center">🔏 SSH</h6>

    # CONNECT TO HOST AS USER                                                                                        --> LINUX@ADMIN:~$ SSH USER@HOST
    # CONNECT TO HOST ON PORT PORT AS USER                                                                           --> LINUX@ADMIN:~$ SSH -P PORT USER@HOST
    # ADD YOUR KEY TO HOST FOR USER TO ENABLE A KEYED OR PASSWORDLESS LOGIN                                          --> LINUX@ADMIN:~$ SSH-COPY-ID USER@HOST

<h6 align="center">🔏 USER ADMINISTRATION</h6>

    # CREATE A NEW USER CALL ACCOUNTNAME                                                           --> LINUX@ADMIN:~$ ADDUSER ACCOUNTNAME
    # GIVE ACCOUNTNAME A NEW PASSWORD                                                              --> LINUX@ADMIN:~$ PASSWD ACCOUNTNAME
    # LOG IN AS SUPERUSER FROM CURRENT LOGIN                                                       --> LINUX@ADMIN:~$ SU
    # STOP BEING SUPERUSER AND REVERT TO NORMAL USER                                               --> LINUX@ADMIN:~$ EXIT

## 🔏 PROCESS MANAGEMENT (RED HAT, FEDORA Y SIMILARES)

    # DISPLAY YOUR CURRENTLY ACTIVE PROCESSES                                                            --> LINUX@ADMIN:~$ PS
    # DISPLAY ALL RUNNING PROCESSES                                                                      --> LINUX@ADMIN:~$ TOP
    # KILL PROCESS ID PID                                                                                --> LINUX@ADMIN:~$ KILL PID
    # KILL ALL PROCESSES NAMED PROC (USE WITH EXTREME CAUTION)                                           --> LINUX@ADMIN:~$ KILLALL PROC
    # LISTS STOPPED OR BACKGROUND JOBS; RESUME A STOPPED JOB IN THE BACKGROUND                           --> LINUX@ADMIN:~$ BG
    # BRINGS THE MOST RECENT JOB TO BACKGROUND                                                           --> LINUX@ADMIN:~$ FG
    # BRINGS JOB N TO THE FOREGROUND                                                                     --> LINUX@ADMIN:~$ FG N

## 🔏 STOPPING AND STARTING (DEBIAN, UBUNTU Y DERIVADOS)

    # SHUTDOWN THE SYSTEM NOW AND DO NOT REBOOT                                                    --> LINUX@ADMIN:~$ SHUTDOWN -H NOW
    # STOP ALL PROCESSES - SAME AS ABOVE                                                           --> LINUX@ADMIN:~$ HALT
    # SHUTDOWN THE SYSTEM IN 5 MINUTES AND REBOOT                                                  --> LINUX@ADMIN:~$ SHUTDOWN -R 5
    # SHUTDOWN THE SYSTEM NOW AND REBOOT                                                           --> LINUX@ADMIN:~$ SHUTDOWN -R NOW
    # STOP ALL PROCESS AND THEN REBOOT - SAME AS ABOVE                                             --> LINUX@ADMIN:~$ REBOOT
    # START THE X SYSTEM                                                                           --> LINUX@ADMIN:~$ STARTX

## 🔏 COMANDOS SEQUENCIAIS

    # COMANDOS SEPARADOS POR PONTO E VIRGULA SÃO EXECUTADOS SEQUENCIALMENTE, INDEPENDENTEMENTE SE FOREM CORRETAMENTE EXECUTADOS
    # COMANDOS SEPARADOS POR && SÃO EXECUTADOS SOMENTE SE O COMANDO ANTERIOR FOR EXECUTADO CORRETAMENTE
    # COMANDOS SEPERADOS POR || SÃO EXECUTADOS SOMENTE SE O COMANDO ANTERIOR NÃO FOR EXECUTADO CORRETAMENTE

## 🔏 QUOTING

    # ASPAS DUPLAS PROTEGEM TODOS OS CARACTERES, EXCETO: CIFRÃO, CRASE E BARRA SIMPLES
    # ASPAS SIMPLES PROTEGEM TODOS OS CARCTERES

## 🔏 CONFIGURAÇÃO TECLAS ?\ TECLADO LENOVO

# COFIGURAÇÃO TECLADO LENOVO

```bash
LINUX@ADMIN:~$ setxkbmap -model abnt2 -layout br -variant abnt2 && xmodmap -e "keycode 105 = KP_Divide question"
```
    
## 🔏 INSTALAÇÃO

# LISTAR TODOS OS SOFTWARES INSTALADOS ON UBUNTU --> LINUX@ADMIN:~$ grep " install " /var/log/dpkg.log

## 🔏 HISTORY

    > EXIBIR O HISTÓRICO DE COMANDOS DIGITADOS --> LINUX@ADMIN:~$ HISTORY

    > EXECUTAR O ÚLTIMO SCRIPT SALVO EM BASH.HISTORY --> LINUX@ADMIN:~$ !!

    > EXECUTAR UM COMANDO PELO NÚMERO DELE SALVO EM BASH.HISTORY --> LINUX@ADMIN:~$ !<NUMERO>

    > LIMPAR O HISTÓRICO DE COMANDOS DIGITADOS --> LINUX@ADMIN:~$ HISTORY -C

    > PESQUISAR PELOS COMANDOS SALVOS EM BASH.HISTORY --> LINUX@ADMIN:~$ CTRL + R
