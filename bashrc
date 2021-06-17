
###| bash shortcuts |###
## v1.0.4
# misc
alias l="ls"
alias ll="ls -lh"
alias la="ls -a"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias untar="tar xf"
alias tcpdi="tcpdump -i"
# git
alias gr="git remote"
alias gcl="git clone"
alias gs="git status"
alias ga="git add"
alias gu="git rm --cached"
alias gcm="git commit -m"
alias gp="git push"
alias gd="git diff"
# docker
alias dc="docker"
alias dci="docker images"
alias dcps="docker ps"
alias dcpsa="docker ps -a"
alias dcomp="docker-compose"
alias dcompu="docker-compose up"
alias dcompd="docker-compose down"
alias dcompub="docker-compose up --build"
alias dcs="docker stats"
alias dce="docker exec"
alias dcex="docker exec"
dcdel() {(
    [[ -z "$1" ]] && echo "Usage: $0 <name-filter> [--dry]" && exit 1
    [[ "$2" == '--dry' ]] && dcps -a | grep $1 | cut -d ' ' -f 1 && exit 0
    docker rm $(docker ps -a | grep $1 | cut -d ' ' -f 1 | paste -sd ' ')
)}
dcdeluntagged() {(
    docker rmi $(docker images -f "dangling=true" -q)
)}
# k8s
alias k="kubectl"
complete -F __start_kubectl k
alias ku="kubectl"
complete -F __start_kubectl ku
alias kube="kubectl"
complete -F __start_kubectl kube
# conda
alias ca="conda activate"
alias ce="conda env list"
alias cl="conda info --envs"
###| ====== |###
