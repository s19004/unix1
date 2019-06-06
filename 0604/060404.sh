if [ -d "$1" ]; then
        # ディレクトリ内のファイルが読み込みできないファイルかチェックして
        #読み込みできないファイルの一覧表示
    for file in $(find "$1" -maxdepth 1 -type f)
    do
        if [ ! -r "$file" ]; then
            echo $(basename "$file")
        fi
    done
else
    # エラーメッセージ
    echo "${1}: ディレクトリではありません"
fi
