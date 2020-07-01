bass source /etc/profile
set -x GOROOT /usr/lib/go
set -x GOPATH $HOME/src/go
set -x PROXYCHAINS_SOCKS5 1081
set -x DENO_INSTALL /home/arslan/.deno
set -gx PATH (yarn global bin) $HOME/.local/bin $HOME/.krew/bin $GOROOT/bin ~/.kube/plugins/jordanwilson230 $GOPATH/bin $DENO_INSTALL/bin $PATH
alias dd='sudo dd status=progress'
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
function sfs
    set -l hostpath (string replace ":" "/" (string split "@" $argv[1])[-1])[1]
    mkdir -p ~/sshfs/$hostpath
    sshfs $argv[1] ~/sshfs/$hostpath
end
alias update='sudo emerge -auDN @world'
