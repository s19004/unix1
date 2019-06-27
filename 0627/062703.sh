usage()
{
    local script_name=$(basename "$0")

    cat << END
使い方: 062703.sh DIRPATH
DIRPATHで指定したディレクトリ下のファイル数/ディレクトリ数を表示
DIRPATH - ファイル数/ディレクトリ数を表示するディレクトリパスを指定
END
}

if [ -d "$1" ]; then
    for file in $(find "$1" -maxdepth 1 -type f)
    do
        if [ -x "$file" ]; then
            echo $(basename "$file")
        fi
    done
else
    echo "${1}: ディレクトリではありません"
fi
