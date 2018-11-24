Param(
    [String]$targetFilePath, #対象のファイルのパスを文字列で受け取る
    [String]$admissibleTimeString #エラー許容時間をHH:ss形式の文字列で受け取る
)
#対象のファイルの更新日時を取得
$fileUpdateTime = (Get-ItemProperty $targetFilePath).LastWriteTime
#現在時刻を取得
$currentTime = [Datetime]::Now
echo($fileUpdateTime)
echo($currentTime)
#現在日時 - ファイルの更新日時で差分の時間を求める
$timesDifference = $currentTime - $fileUpdateTime
#HH:ss形式で受け取った$admissibleTimeStringを":"で区切り、配列に分割する
$admissibleTimeArray = $admissibleTimeString -split ":"
#エラー許容時間を生成する
$admissibleTime = New-TimeSpan -Hours $admissibleTimeArray[0] -Minutes $admissibleTimeArray[1]
if ($timesDifference -le $admissibleTime) {
    exit 0
} else {
    exit 1
}