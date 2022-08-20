# Linux Commands

### System information

1. `df`: The df command shows the size, used space, and available space on the mounted filesystems of your computer. Adding option`-h` shows a human readable version of the same. If you're using WSL, you can even find all your Windows drives too (including C, D, etc.).

2. `ps`: The ps command lists running processes.

3. `whoami`: Prints the name of the user logged in during the session.

4. `history`: Lists all the commands previously run on the command line.

5. `exit`: Closes the terminal window.

### Superuser permissions

1. `sudo`: This command is used to perform actions that require superuser (admin) permissions.

### Creating and changing directories

1. `mkdir <directory name>`: Helps us to create new directories on the linux file system.

2. `cd`: Helps us to move between different directories.

### Creating and editing files

1. `nano <file name>`: **Nano** is a lightwight text editor on linux.

### Listing files

1. `ls`: Helps to list the files and folders in a directory. Add `-l` option to get a descriptive view.

### Print text

1. `pwd`: Prints the current working directory.

2. `cat <file name>`: Lists the contents of a file in the terminal window.

3. `head <file name>`: Displays the first 10 lines of a file.

4. `tail <file name>`: Displays the last 10 lines of a file.

5. `echo <text>`: Prints text to a terminal window.

### Copy files

1. `cp <source> <destination>`: Helps to copy files and folders in the linux file system.

2. `mv <file to move> <destination>`: Allows us to move files and directories from directory to directory. It also helps us to rename files.

### Remove files and directories

1. `rm <file or folder>`: It is used to delete files and directories. The option `-r` helps to delete directories and their contents recursively.

### Searching

1. `find`: Use this command to track down files that you know exist but can’t remember where you put them. Usage -> `find . -type f -name '<text to search>'` (Search for files with their names containing the text in the current directory recursively).

2. `grep`: Helps us to search for lines in one or more files that contain a search pattern. Usage -> `grep text file(s)`.

### Downloading from web

1. `curl`: Download files and data from the internet. Usage -> `curl <URL> -o <name>`.

2. `wget`: Download files and data from the internet. Usage -> `wget <URL> -O <name>`

### Compress files

1. `gzip <file name>`: This command compresses files. By default it removes the original file and leaves only a compressed version. To retain both, we need to use the option `-k`.

2. `tar`: Tar is an archiver which means it can archive multiple files into a single file. But it does not apply compression by default. Usage:
- Archive without compression: `tar -cvf <filename>.tar directory`
- Archive and then compress: `tar -cvzf <filename>.tar.gz directory`
- Extract files from an archive (uncompressed): `tar -xvf <filename>.tar`
- Extract files from a compressed archive: `tar -xvzf <filename>.tar.gz`

### Connecting to external servers

1. `ssh <address>`: Use this command to make a connection to a remote Linux computer and log into account.


**NOTE**
- Add option `--help` after any command to read its usage manual that lists optional parameters.
- Use `clear` command to clear the screen (linux terminal). 