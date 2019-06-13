cat << END
Usage: $script_name PATTERN [PATH] [NAME_PATTERN]
Find file in current directory recursively, and print lines which match PATTERN.

  PATH         find file in PATH directory, instead of current directory
  NAME_PATTERN specify name pattern to find file

Examples:
  $script_name return
  $script_name return ~ '*.txt'
END

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
