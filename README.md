# linuxman

_Some handy tools for Linux command line (primarily for Ubuntu)_

This project is heavily inspired by the project [Mac-CLI](https://github.com/guarinogabriel/Mac-CLI)
but without much installation.

The project name is suggested by [Mario](https://github.com/kmario23)

## Installation

```bash
git clone https://github.com/duguyue100/linuxman
```

Add the alias to the terminal profile:

```bash
alias lman="/path/to/linuxman/linuxman"
```

And you are done!

## Usage

Get help!

```bash
lman list
# or
lman help
```

Shutdown your machine
```bash
lman shutdown
```

## Available Functions - 64 and counting...

```
Linux Terminal Tools
==============================================================
lman list/help  : List all the available commands.
lman info       : Get Linux version information
lman lock       : Lock your computer
lman restart    : Restart your computer
lman sleep      : Put computer in sleep mode
lman shutdown   : Shutdown your computer
lman uptime     : Get the time since last restart
lman mem        : Get the memory status
lman ports      : List all used ports
lman ip.loc     : Get Local IP address
lman ip.pub     : Get Public IP address
lman clock      : Show a clock at the top right of your terminal
lman fd.size    : Show the folder size.
lman fd.hid     : List only hidden files in the folder.
lman md5        : Calculate MD5 for a file
--------------------------------------------------------------
Git Related
lman g.init     : Init a Git repository locally
lman g.clone    : Clone a project through URL
lman g.log      : Get the log of the project
lman g.stat     : Print the status of the proejct
lman g.open     : Open the Git repo from URL
lman g.size     : Calculate the size of Git Repo
lman g.re       : Add an push/pull origin
lman g.conf     : List the git configuration
lman g.undo     : Undo last commit
lman g.add      : Stage a file
lman g.add.all  : Stage all the changes
lman g.commit   : Commit the changes
lman g.ac       : Stage a file and commit
lman g.aca      : Stage all changes and commit
lman g.acp      : Stage file, commit and push
lman g.acap     : Stage all, commit and push
lman g.mv       : Move file to new destination
lman g.rm       : Remove file.
lman g.push     : Push to current branch
lman g.pull     : Pull to current branch
lman g.merge    : Merge a specific branch
lman g.th.bh    : Touch (create) a new branch
lman g.th.re.bh : Touch (clone) a remote branch
lman g.co.bh    : Checkout a existing branch
lman g.co.re.bh : Checkout a remote branch
lman g.ls.bh    : List all the branch
lman g.rm.bh    : Remove a local branch
lman g.rm.re.bh : Remove a branch from local and remote
lman g.lfs.init : Init LFS storage
lman g.lfs.tk   : LFS track files
lman g.lfs.untk : LFS untrack files
lman g.lfs.ls   : List all tracked files
lman g.lfs.conf : Get the environment variables for the LFS.
--------------------------------------------------------------
Functors - extra tools
lman wttr       : Show the weather for a city.
lman top10      : Show the top10 used shell commands.
lman starwar    : Text based Starwar IV
lman ol.open    : Open a Overleaf Project
--------------------------------------------------------------
Compressor
lman lszip      : List file in a ZIP archive.
lman zip        : Zip a file or folder.
lman unzip      : Unzip a file or folder.
lman lstar      : List file in a tar archive.
lman tar        : Tar a file or folder.
lman untar      : Untar a file or folder.
==============================================================
```

## Tools for Extra Functions

### Git related

One could install Git from popular packaging management systems or visit [Git-website](https://git-scm.com/).

### Git LFS

One could install Git LFS from [Git LFS](https://git-lfs.github.com/)

### Open Overleaf from cloned project

The `git` URL that is given by Overleaf cannot be opened.
Therefore, one can use `ol.open` to open the corresponding project from terminal.

## Contacts

Yuhuang Hu  
Email: duguyue100@gmail.com
