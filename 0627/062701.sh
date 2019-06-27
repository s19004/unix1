mkdir -p dir1

mkdir -p dir1/dir2

mkdir -p dir1/dir2/dir3

touch dir1/dir2/file{01..05}

touch dir1/dir2/dir3/file{06..10}

cd dir1/

tree

rm -r dir1
