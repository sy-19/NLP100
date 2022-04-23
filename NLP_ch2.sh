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