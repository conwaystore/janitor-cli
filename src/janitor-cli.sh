#! /bin/bash
version() {
    echo "v0.1-build1"
}

truncate() {
    for p in "$@"; do
        if [[ -f "$(abspath "$p")" && "$(filext "$p")" = "log" ]]; then
            cat /dev/null > "$p"
        fi
    done

    echo "Finished"
}

abspath() {
    pushd "$(dirname "$1")" >> /dev/null && echo "$PWD/$(basename "$1")"
    popd >> /dev/null
}

filext() {
    echo "$1" | awk -F . '{print $NF}'
}

main() {
    case "$1" in
        version|\-v )
        version
        ;;
        truncate|\-c )
        truncate "${@:2}"
        ;;
        * )
        return
        ;;
    esac
}

main "$@"
