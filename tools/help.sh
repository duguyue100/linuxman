

case "$fn" in
    "list"|"help")
        echo "Linux Terminal Tools"
        echo "=============================================================="
        echo "General"
        echo "--------------------------------------------------------------"
        echo "lman list/help  : List all the available commands"
        echo "lman info       : Get Linux version information"
        echo "lman lock       : Lock your computer"
        echo "lman restart    : Restart your computer"
        echo "lman sleep      : Put computer in sleep mode"
        echo "lman shutdown   : Shutdown your computer"
        echo "lman uptime     : Get the time since last restart"
        echo "lman mem        : Get the memory status"
        echo "lman ports      : List all used ports"
        echo "lman ip.loc     : Get Local IP address"
        echo "lman ip.pub     : Get Public IP address"
        echo "lman clock      : Show a clock at the top right of your terminal"
        echo "lman fd.size    : Show the folder size."
        echo "lman fd.hid     : List only hidden files in the folder."
        echo "lman md5        : Calculate MD5 for a file"
        echo "--------------------------------------------------------------"
        echo "Git Related"
        echo "--------------------------------------------------------------"
        echo "lman g.init     : Init a Git repository locally"
        echo "lman g.clone    : Clone a project through URL"
        echo "lman g.log      : Get the log of the project"
        echo "lman g.stat     : Print the status of the proejct"
        echo "lman g.open/go  : Open the Git repo from URL"
        echo "lman g.size     : Calculate the size of Git Repo"
        echo "lman g.re       : Add an push/pull origin"
        echo "lman g.conf     : List the git configuration"
        echo "lman g.undo     : Undo last commit"
        echo "lman g.add      : Stage a file"
        echo "lman g.add.all  : Stage all the changes"
        echo "lman g.commit   : Commit the changes"
        echo "lman g.ac       : Stage a file and commit"
        echo "lman g.aca      : Stage all changes and commit"
        echo "lman g.acp      : Stage file, commit and push"
        echo "lman g.acap     : Stage all, commit and push"
        echo "lman g.mv       : Move file to new destination"
        echo "lman g.rm       : Remove file."
        echo "lman g.wipe     : Wipe all history and keep current status"
        echo "lman g.clean    : Clean untracked files in .gitignore"
        echo "lman g.push     : Push to current branch"
        echo "lman g.pull     : Pull to current branch"
        echo "lman g.merge    : Merge a specific branch"
        echo "lman g.th.bh    : Touch (create) a new branch"
        echo "lman g.th.re.bh : Touch (clone) a remote branch"
        echo "lman g.co.bh    : Checkout a existing branch"
        echo "lman g.co.re.bh : Checkout a remote branch"
        echo "lman g.ls.bh    : List all the branch"
        echo "lman g.rm.bh    : Remove a local branch"
        echo "lman g.rm.re.bh : Remove a branch from local and remote"
        echo "lman g.stash    : Make a stash, stay away from dirty work tree"
        echo "lman g.unstash  : Get out from stash (EVERY CHANGES IN THERE COUNTS"
        echo "lman g.lfs.init : Init LFS storage"
        echo "lman g.lfs.tk   : LFS track files"
        echo "lman g.lfs.untk : LFS untrack files"
        echo "lman g.lfs.ls   : List all tracked files"
        echo "lman g.lfs.conf : Get the environment variables for the LFS."
        echo "--------------------------------------------------------------"
        echo "Functors - extra tools"
        echo "--------------------------------------------------------------"
        echo "lman wttr       : Show the weather for a city."
        echo "lman top10      : Show the top10 used shell commands."
        echo "lman starwar    : Text based Starwar IV"
        echo "lman ol.open    : Open a Overleaf Project"
        echo "     (olgo)"
        echo "lman ag         : Code Search"
        echo "lman waka       : Check WAKA!"
        echo "--------------------------------------------------------------"
        echo "Compressor"
        echo "--------------------------------------------------------------"
        echo "lman lszip      : List file in a ZIP archive."
        echo "lman zip        : Zip a file or folder."
        echo "lman unzip      : Unzip a file or folder."
        echo "lman lstar      : List file in a tar archive."
        echo "lman tar        : Tar a file or folder."
        echo "lman untar      : Untar a file or folder."
        echo "--------------------------------------------------------------"
        echo "Terminal Multiplexer (screen and tmux)"
        echo "--------------------------------------------------------------"
        echo "lman s.at       : Create a new screen session"
        echo "lman s.re       : Reattach a screen session"
        echo "lman s.de       : Detach a screen session"
        echo "lman s.ls       : List all available screen session(s)"
        echo "lman s.rm       : Remove a screen session"
        echo "lman s.rm.all   : Remove all available screen session(s)"
        echo "lman s.div.h    : Split region horizontally"
        echo "lman s.div.v    : Split region vertically"
        echo "lman s.go.left  : Go left region"
        echo "    (sl)"
        echo "lman s.go.right : Go right region"
        echo "    (sr)"
        echo "lman s.go.up    : Go above region"
        echo "    (su)"
        echo "lman s.go.down  : Go below region"
        echo "    (sd)"
        echo "lman spx        : Kill current region"
        echo "lman s.re.left  : Expand region horizontally"
        echo "    (srl)"
        echo "lman s.re.right : Shrink region horizontally"
        echo "    (srr)"
        echo "lman s.re.up    : Expand region vertically"
        echo "    (sru)"
        echo "lman s.re.down  : Shrink region vertically"
        echo "    (srd)"
        echo "lman t.at       : Create a new tmux session"
        echo "lman t.re       : Reattach a tmux session"
        echo "lman t.de       : Detach a tmux session"
        echo "lman t.rm       : Remove a tmux session"
        echo "lman t.rm.all   : Remove all tmux session(s)"
        echo "lman t.ls       : List all available tmux session(s)"
        echo "lman t.div.h    : Split pane horizontally"
        echo "lman t.div.v    : split pane vertically"
        echo "lman t.go.left  : Go left pane"
        echo "    (tl)"
        echo "lman t.go.right : Go right pane"
        echo "    (tr)"
        echo "lman t.go.up    : Go above pane"
        echo "    (tu)"
        echo "lman t.go.down  : Go below pane"
        echo "    (td)"
        echo "lman tpx        : Kill current pane"
        echo "=============================================================="
    ;;
    
    "helper"|"h") 
        echo "--------------------------------------------------------------"
        echo "Helpers" 
        echo "--------------------------------------------------------------"
        echo "lman list/help  : List all the available commands"
        echo "lman gen        : Get help for General function"
        echo "lman git/g      : Get help for Git related functions"
        echo "lman fun/f      : Get help for Functors related functions"
        echo "lman com/c      : Get help for Compressor related functions"
        echo "lman term/t     : Get help for Terminal Multiplexer related functions"
        echo "--------------------------------------------------------------"
    ;;

    "gen" )
        echo "--------------------------------------------------------------"
        echo "General"
        echo "--------------------------------------------------------------"
        echo "lman list/help  : List all the available commands"
        echo "lman info       : Get Linux version information"
        echo "lman lock       : Lock your computer"
        echo "lman restart    : Restart your computer"
        echo "lman sleep      : Put computer in sleep mode"
        echo "lman shutdown   : Shutdown your computer"
        echo "lman uptime     : Get the time since last restart"
        echo "lman mem        : Get the memory status"
        echo "lman ports      : List all used ports"
        echo "lman ip.loc     : Get Local IP address"
        echo "lman ip.pub     : Get Public IP address"
        echo "lman clock      : Show a clock at the top right of your terminal"
        echo "lman fd.size    : Show the folder size."
        echo "lman fd.hid     : List only hidden files in the folder."
        echo "lman md5        : Calculate MD5 for a file"
        echo "--------------------------------------------------------------"
    ;;

    "git"|"g" )
        echo "--------------------------------------------------------------"
        echo "Git Related"
        echo "--------------------------------------------------------------"
        echo "lman g.init     : Init a Git repository locally"
        echo "lman g.clone    : Clone a project through URL"
        echo "lman g.log      : Get the log of the project"
        echo "lman g.stat     : Print the status of the proejct"
        echo "lman g.open/go  : Open the Git repo from URL"
        echo "lman g.size     : Calculate the size of Git Repo"
        echo "lman g.re       : Add an push/pull origin"
        echo "lman g.conf     : List the git configuration"
        echo "lman g.undo     : Undo last commit"
        echo "lman g.add      : Stage a file"
        echo "lman g.add.all  : Stage all the changes"
        echo "lman g.commit   : Commit the changes"
        echo "lman g.ac       : Stage a file and commit"
        echo "lman g.aca      : Stage all changes and commit"
        echo "lman g.acp      : Stage file, commit and push"
        echo "lman g.acap     : Stage all, commit and push"
        echo "lman g.mv       : Move file to new destination"
        echo "lman g.rm       : Remove file."
        echo "lman g.wipe     : Wipe all history and keep current status"
        echo "lman g.clean    : Clean untracked files in .gitignore"
        echo "lman g.push     : Push to current branch"
        echo "lman g.pull     : Pull to current branch"
        echo "lman g.merge    : Merge a specific branch"
        echo "lman g.th.bh    : Touch (create) a new branch"
        echo "lman g.th.re.bh : Touch (clone) a remote branch"
        echo "lman g.co.bh    : Checkout a existing branch"
        echo "lman g.co.re.bh : Checkout a remote branch"
        echo "lman g.ls.bh    : List all the branch"
        echo "lman g.rm.bh    : Remove a local branch"
        echo "lman g.rm.re.bh : Remove a branch from local and remote"
        echo "lman g.stash    : Make a stash, stay away from dirty work tree"
        echo "lman g.unstash  : Get out from stash (EVERY CHANGES IN THERE COUNTS"
        echo "lman g.lfs.init : Init LFS storage"
        echo "lman g.lfs.tk   : LFS track files"
        echo "lman g.lfs.untk : LFS untrack files"
        echo "lman g.lfs.ls   : List all tracked files"
        echo "lman g.lfs.conf : Get the environment variables for the LFS."
        echo "--------------------------------------------------------------"
    ;;

    "fun"|"f")
        echo "--------------------------------------------------------------"
        echo "Functors - extra tools"
        echo "--------------------------------------------------------------"
        echo "lman wttr       : Show the weather for a city."
        echo "lman top10      : Show the top10 used shell commands."
        echo "lman starwar    : Text based Starwar IV"
        echo "lman ol.open    : Open a Overleaf Project"
        echo "     (olgo)"
        echo "lman ag         : Code Search"
        echo "lman waka       : Check WAKA!"
        echo "--------------------------------------------------------------"
    ;;

    "com"|"c")
        echo "--------------------------------------------------------------"
        echo "Compressor"
        echo "--------------------------------------------------------------"
        echo "lman lszip      : List file in a ZIP archive."
        echo "lman zip        : Zip a file or folder."
        echo "lman unzip      : Unzip a file or folder."
        echo "lman lstar      : List file in a tar archive."
        echo "lman tar        : Tar a file or folder."
        echo "lman untar      : Untar a file or folder."
        echo "--------------------------------------------------------------"
    ;;

    "term"|"t")
        echo "--------------------------------------------------------------"
        echo "Terminal Multiplexer (screen and tmux)"
        echo "--------------------------------------------------------------"
        echo "lman s.at       : Create a new screen session"
        echo "lman s.re       : Reattach a screen session"
        echo "lman s.de       : Detach a screen session"
        echo "lman s.ls       : List all available screen session(s)"
        echo "lman s.rm       : Remove a screen session"
        echo "lman s.rm.all   : Remove all available screen session(s)"
        echo "lman s.div.h    : Split region horizontally"
        echo "lman s.div.v    : Split region vertically"
        echo "lman s.go.left  : Go left region"
        echo "    (sl)"
        echo "lman s.go.right : Go right region"
        echo "    (sr)"
        echo "lman s.go.up    : Go above region"
        echo "    (su)"
        echo "lman s.go.down  : Go below region"
        echo "    (sd)"
        echo "lman spx        : Kill current region"
        echo "lman s.re.left  : Expand region horizontally"
        echo "    (srl)"
        echo "lman s.re.right : Shrink region horizontally"
        echo "    (srr)"
        echo "lman s.re.up    : Expand region vertically"
        echo "    (sru)"
        echo "lman s.re.down  : Shrink region vertically"
        echo "    (srd)"
        echo "lman t.at       : Create a new tmux session"
        echo "lman t.re       : Reattach a tmux session"
        echo "lman t.de       : Detach a tmux session"
        echo "lman t.rm       : Remove a tmux session"
        echo "lman t.rm.all   : Remove all tmux session(s)"
        echo "lman t.ls       : List all available tmux session(s)"
        echo "lman t.div.h    : Split pane horizontally"
        echo "lman t.div.v    : split pane vertically"
        echo "lman t.go.left  : Go left pane"
        echo "    (tl)"
        echo "lman t.go.right : Go right pane"
        echo "    (tr)"
        echo "lman t.go.up    : Go above pane"
        echo "    (tu)"
        echo "lman t.go.down  : Go below pane"
        echo "    (td)"
        echo "lman tpx        : Kill current pane"
        echo "--------------------------------------------------------------"
    ;;
esac
