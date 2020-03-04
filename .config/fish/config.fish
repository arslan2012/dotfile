bass source /etc/profile
set -x GOROOT /usr/lib/go
set -x GOPATH $HOME/src/go
set -x PROXYCHAINS_SOCKS5 1081
set -gx PATH (yarn global bin) $HOME/.local/bin $HOME/.krew/bin $GOROOT/bin $GOPATH/bin $PATH
alias dd='sudo dd status=progress'
alias ranger='ranger --choosedir=$HOME/.rangerdir; cd (cat $HOME/.rangerdir)'
abbr ls lsd -ahl
abbr rm rm -rf
abbr vi nvim
abbr vim nvim
function sync
    set -lx http_proxy http://127.0.0.1:8001/
    set -lx https_proxy http://127.0.0.1:8001/
    sudo emerge --sync
    sudo layman -S
end
alias update='sudo emerge -auDN --keep-going --with-bdeps=y --verbose-conflicts --rebuild-if-new-slot=y @world'
