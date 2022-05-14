# 10.行数のカウント
cat popular-names.txt|wc -l

# 11.タブをスペースに変換
# ファイル出力する場合は最後に「> 〇〇.txt」でリダイレクト
expand -t 1 popular-names.txt

# 12.1列目をcol1.txtに，2列目をcol2.txtに保存
cat popular-names.txt |cut -d " " -f 1 > col1.txt
cat popular-names.txt |cut -d " " -f 2 > col2.txt

# 13. col1.txtとcol2.txtをマージ
# paste は-dオプションなしだと結合文字がタブになる
paste col1.txt col2.txt > merge.txt

# 14. 先頭からN行を出力
END=10
cat merge.txt |head -$END

# 15. 末尾のN行を出力
START=5
cat merge.txt |tail -$START

# 16. ファイルをN分割する
LINES=20
split -l $LINES popular-names.txt split-lines

# 17. １列目の文字列の異なり
cat popular-names.txt |cut -d " " -f 1 |sort |uniq |wc -l

# 18. 各行を3コラム目の数値の降順にソート
sort -r -n -k 3 popular-names.txt

# 19. 各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる
cut -d " "  -f 1 popular-names.txt |sort |uniq -c |sort -r -n -k 1