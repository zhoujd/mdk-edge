## env.sh

export SINGLE_HOST=${SINGLE_HOST:-127.0.0.1}
export DEK_HOME=${DEK_HOME:-`pwd`}

config() {
    local file=$1
    shift
    local vars=("$@")
    for i in "${vars[@]}"; do
        echo "[$file][update] $i"
        yq -i $i $file
    done
}

query() {
    local file=$1
    shift
    local vars=("$@")
    for i in "${vars[@]}"; do
        key=(${i//=/ })
        value=`yq ${key[0]} $file`
        echo "[$file][query] $key=$value"
    done
}
