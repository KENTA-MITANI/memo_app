# メモアプリ
日々の生活＆仕事に向けて作ったメモアプリになります。
<br>シンプルで気軽に使えることをモットーにしています。</br>

<img width="1000" alt="スクリーンショット 2021-06-05 15 55 46" src="https://user-images.githubusercontent.com/73543598/120883142-86ea1500-c616-11eb-807b-4e2845be09a0.png">
<br>

# URL
下記がメモアプリのリンク先になります。
<br>https://memolist-app.herokuapp.com/memos</br>
<br>
# 使い方
ヘッダーの新規登録からメモを登録することができ、カテゴリを登録することで後からカテゴリ別にメモを表示することが出来ます。
<br>トップページのに設けている検索欄にキーワードを入力すると、メモタイトルを対象とした検索を実行することが出来ます。
<br>また、ヘッダーにあるエクスポートから、メモをCSVファイルを出力することが出来ます。</br>

<img width="200" alt="スクリーンショット 2021-06-05 15 48 30" src="https://user-images.githubusercontent.com/73543598/120882953-92890c00-c615-11eb-9b91-381b61345400.png">  <img width="200" alt="スクリーンショット 2021-06-05 15 45 58" src="https://user-images.githubusercontent.com/73543598/120882986-b0ef0780-c615-11eb-9af0-d1d30644f498.png"> <img width="200" alt="スクリーンショット 2021-06-05 15 51 04" src="https://user-images.githubusercontent.com/73543598/120883023-dbd95b80-c615-11eb-98b8-50e77143e24b.png"> </br>
<br>


# 環境開発・使用技術
・Ruby 2.7.2
<br>・Rails 6.0.3.5
<br>・SCSS
<br>・Bootstrap
<br>・JavaScript
<br>・PostgreSQL 13.1
<br>・heroku</br>
<br>

# 実装機能
・メモの記録(CRUD処理)
<br>・メモの新規登録、編集、削除時のflash表示
<br>・メモ入力フォームのバリデーション機能
<br>・ページネーション(kaminari)
<br>・検索機能(Ransack)
<br>・CSVエクスポート機能
<br>・カテゴリ別表示(work/life/hobby/other)
