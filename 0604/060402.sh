for file in "$@"
do
    if [ -f "$1" ]; then
        # duでファイル容量を求める
         du "$file"
    else
        # エラーメッセージ
       echo "${file}: 通常のファイルではありません"
    fi
done
