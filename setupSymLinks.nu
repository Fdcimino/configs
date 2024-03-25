#!/user/bin/env nu

def setupWindows [] {
    if not (is-admin) {
        print "need admin to run"
        return
    }
    rm --force $"($env.LOCALAPPDATA)\\nvim-data"
    rm --force $"($env.APPDATA)\\nushell"
    mklink /d $"($env.LOCALAPPDATA)\\nvim" $"(pwd)\\nvim"
    mklink /d $"($env.APPDATA)\\nushell" $"(pwd)\\nushell"
}

def setupLinux [] {

    rm --force ~/.config/nvim
    rm --force ~/.config/nvim-data
    rm --force ~/.config/tmux
    rm --force ~/.config/nushell

    ln -sr ./nvim ~/.config/
    ln -sr ./tmux ~/.config/
    ln -sr ./nushell ~/.config/
}

if (sys).host.name == "Windows" {
    print "Host is running Windows"
    setupWindows
} 

if (sys).host.name =~ "Linux" {
    print "Host is running linux"
}

