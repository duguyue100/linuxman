# linuxman
[![GitHub release](https://img.shields.io/github/release/duguyue100/linuxman.svg?style=flat-square)](https://github.com/duguyue100/linuxman)

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

## Available Functions - 94 and counting...

### General

| Command          | Parameters  | Description                                          |
| :------          | :---------- | :-------------------------------                     |
| `list` or `help` |             | List all the available commands.                     |
| `helper` or `h`  |             | Get help for help functions.                         |
| `gen`            |             | Get help for General functions.                      |
| `git` or `g`     |             | Get help for Git related functions.                  |
| `fun` or `f`     |             | Get help for Functors related functions.             |
| `com` or `c`     |             | Get help for Compressor related functions.           |
| `term` or `t`    |             | Get help for Terminal Multiplexer related functions. |
| `info`           |             | Get OS X version information.                        |
| `lock`           |             | Lock your mac.                                       |
| `restart`        |             | Restart your mac.                                    |
| `shutdown`       |             | Shutdown your mac.                                   |
| `uptime`         |             | Get the time since last restart.                     |
| `mem`            |             | Get the memory status.                               |
| `speed`          |             | Network speed test with `npm`'s `fast-cli` package.  |
| `ports`          |             | List all used ports.                                 |
| `ip.loc`         |             | Get local IP address.                                |
| `ip.pub`         |             | Get public IP address.                               |
| `clock`          |             | Show a clock at the top right of your terminal.      |
| `fd.size`        |             | Show the folder size.                                |
| `fd.hid`         |             | List only hidden files in the folder.                |
| `md5`            | `file`      | Calculate MD5 for a file.                            |

### Git

| Command          | Parameters      | Description                                |
| :------          | :----------     | :-------------------------------           |
| `g.init`         |                 | Init a Git repository locally.             |
| `g.clone`        | `repo link`     | Clone a project through URL.               |
| `g.log`          | `(OPT) file`    | Get the log for the file or the repo.      |
| `g.stat`         |                 | Get the status of the repo.                |
| `g.open` or `go` |                 | Open the Git repo from URL.                |
| `g.size`         |                 | Calculate the size of Git repo.            |
| `g.re`           | `URL`           | Add an pull/pull origin.                   |
| `g.conf`         |                 | List the Git repo configuration.           |
| `g.undo`         |                 | Undo last commit.                          |
| `g.add`          | `file`          | Stage a file.                              |
| `g.add.all`      |                 | Stage all the changes.                     |
| `g.commit`       | `msg`           | Commit the changes.                        |
| `g.ac`           | `file` `msg`    | Stage a file and commit.                   |
| `g.aca`          | `msg`           | Stage all changes and commit.              |
| `g.acp`          | `file` `msg`    | Stage file, commit and push.               |
| `g.acap`         | `msg`           | Stage all changes, commit and push.        |
| `g.mv`           | `file1` `file2` | Move file to new destination               |
| `g.rm`           | `file`          | Remove file.                               |
| `g.push`         |                 | Push current branch.                       |
| `g.pull`         |                 | Pull current branch.                       |
| `g.merge`        | `branch`        | Merge a specific branch.                   |
| `g.th.bh`        | `branch`        | Create a new branch.                       |
| `g.th.re.bh`     | `remote branch` | Clone a remote branch.                     |
| `g.co.bh`        | `branch`        | Checkout a existing branch.                |
| `g.co.re.bh`     | `remote branch` | Checkout a remote branch.                  |
| `g.ls.bh`        |                 | List all the branch.                       |
| `g.rm.bh`        | `branch`        | Remove a local branch.                     |
| `g.rm.re.bh`     | `branch`        | Remove a branch from local and remote.     |
| `g.lfs.init`     |                 | Initial LFS storage.                       |
| `g.lfs.tk`       | `file`          | LFS track files.                           |
| `g.lfs.untk`     | `file`          | LFS untrack files.                         |
| `g.lfs.ls`       |                 | List all tracked files.                    |
| `glfs.conf`      |                 | Get the environmetn variables for the LFS. |

### Functor

| Command             | Parameters  | Description                             |
| :------             | :---------- | :-------------------------------        |
| `wttr`              |             | Show the weather for a city.            |
| `top10`             |             | Show the top 10 used shell commands.    |
| `starwar`           |             | Text based Starwar IV.                  |
| `ol.open` or `olgo` |             | Open a Overleaf Project.                |

### Compressor

| Command | Parameters            | Description                      |
| :------ | :----------           | :------------------------------- |
| `lszip` | `file`                | List file in a ZIP archive.      |
| `zip`   | `file` or `folder`    | Zip a file or folder.            |
| `unzip` | `file` `(OPT) folder` | Unzip a file to a folder.        |
| `lstar` | `file`                | List file in a tar archive.      |
| `tar`   | `file` or `folder`    | Tar a file or folder.            |
| `untar` | `file` `(OPT) folder` | Untar a file to a folder.        |

### Terminal Multiplexer

| Command               | Parameters    | Description                             |
| :------               | :----------   | :-------------------------------        |
| `s.at`                | `(OPT) name`  | Create a new screen session.            |
| `s.re`                | `name`        | Reattach a screen session.              |
| `s.de`                | `name`        | Detach a screen session.                |
| `s.ls`                |               | List all available screen session(s).   |
| `s.rm`                | `name`        | Remove a screen session.                |
| `s.rm.all`            |               | Remove all available screen session(s). |
| `s.div.h`             |               | Split region horizontally.              |
| `s.div.v`             |               | Split region vertically.                |
| `s.go.left` or `sl`   |               | Go left region.                         |
| `s.go.right` or `sr`  |               | Go right region.                        |
| `s.go.up` or `su`     |               | Go above region.                        |
| `s.go.down` or `sd`   |               | Go below region.                        |
| `spx`                 |               | Kill current region.                    |
| `s.re.left` or `srl`  | `(OPT) +space`| Expand region horizontally              |
| `s.re.right` or `srr` | `(OPT) -space`| Shrink region horizontally              |
| `s.re.up` or `sru`    | `(OPT) +space`| Expand region vertically                |
| `s.re.down` or `srd`  | `(OPT) -space`| Shrink region vertically                |
| `t.at`                | `(OPT) name`  | Create a new tmux session.              |
| `t.re`                | `name`        | Detach a tmux session.                  |
| `t.de`                |               | Detach current tmux session.            |
| `t.rm`                | `name`        | Remove a tmux session.                  |
| `t.rm.all`            |               | Remove all tmux session(s).             |
| `t.ls`                |               | List all available tmux session(s).     |
| `t.div.h`             |               | Split pane horizontally.                |
| `t.div.v`             |               | Split pane vertically.                  |
| `t.go.left` or `tl`   |               | Go left pane.                           |
| `t.go.right` or `tr`  |               | Go right pane.                          |
| `t.go.up` or `tu`     |               | Go above pane.                          |
| `t.go.down` or `td`   |               | Go below pane.                          |
| `tpx`                 |               | Kill current pane.                      |

## Tools for Extra Functions

### Git related

One could install Git from popular packaging management systems or visit [Git-website](https://git-scm.com/).

### Git LFS

One could install Git LFS from [Git LFS](https://git-lfs.github.com/)

### Open Overleaf from cloned project

The `git` URL that is given by Overleaf cannot be opened.
Therefore, one can use `ol.open` to open the corresponding project from terminal.

### Terminal Multiplexer

One could install `screen` or `tmux` on the platform to enable terminal
multiplexer.

GNU Screen is known to be stable and fast over SSH connection,
whereas `tmux` is very slow via SSH connction.

However, `tmux` is has very powerful configuration so it works perfectly
in local environment.

## Contacts

Yuhuang Hu  
Email: duguyue100@gmail.com
