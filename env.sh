### env.sh

SCRIPT_ROOT=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

add_path() {
    for ARG in "$@"
    do
        if [ -d "$ARG" ] && [[ ":$PATH:" != *":$ARG:"* ]]; then
            PATH="$ARG${PATH:+":$PATH"}"
        fi
    done
    export PATH
}

add_path $SCRIPT_ROOT
