## 特定のファイルがN時間N分以上更新されていないか確認するpowershellです
ファイルの更新日時がN時間N分以上前だった場合は%ERRORLEVEL%に1が、
それ以外は%ERRORLEVEL%に0が入ります。
引数は、 確認したいファイルのパス 許容時間(HH:ss)です。
