if [ -d "$1" ]; then
        # ディレクトリ内のファイルが実行可能ファイルかチェックして
        # 実行可能ファイルであれば表示
    for file in $(find "$1" -maxdepth 1 -type f)
    do
        # fileが実行ファイルであれば表示
        # if [ -x "${1}/${file}" ] && [ ! -d "${1}/${file}" ]; then
        if [ -x "$file" ]; then
            # echo "$file"
            # echo `basename "$file"`
            echo $(basename "$file")
            # echo ls -l "${file}"
        fi
    done
else
    # エラーメッセージ
    echo "${1}: ディレクトリではありません"
fi
