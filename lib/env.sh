## env.sh

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
