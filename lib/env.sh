## env.sh

## yq -i '.a.b[0].c = "cool"' file.yaml
config() {
    local file=$1
    shift
    local vars=("$@")
    for i in "${vars[@]}"; do
        echo "[$file][update] $i"
        yq -i $i $file
    done
}

## yq '.a.b[0].c' file.yaml
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

## yq 'del(.a.a1)' sample.yml
delete() {
    local file=$1
    shift
    local vars=("$@")
    for i in "${vars[@]}"; do
        value=`yq $i $file`
        echo "[$file] $i"
    done
}
