cat << END
Usage: $script_name PATTERN [PATH] [NAME_PATTERN]
Find file in current directory recursively, and print lines which match PATTERN.

  PATH         find file in PATH directory, instead of current directory
  NAME_PATTERN specify name pattern to find file

Examples:
  $script_name return
  $script_name return ~ '*.txt'
END

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
