Param(
    [String]$targetFilePath, #�Ώۂ̃t�@�C���̃p�X�𕶎���Ŏ󂯎��
    [String]$admissibleTimeString #�G���[���e���Ԃ�HH:ss�`���̕�����Ŏ󂯎��
)
#�Ώۂ̃t�@�C���̍X�V�������擾
$fileUpdateTime = (Get-ItemProperty $targetFilePath).LastWriteTime
#���ݎ������擾
$currentTime = [Datetime]::Now
echo($fileUpdateTime)
echo($currentTime)
#���ݓ��� - �t�@�C���̍X�V�����ō����̎��Ԃ����߂�
$timesDifference = $currentTime - $fileUpdateTime
#HH:ss�`���Ŏ󂯎����$admissibleTimeString��":"�ŋ�؂�A�z��ɕ�������
$admissibleTimeArray = $admissibleTimeString -split ":"
#�G���[���e���Ԃ𐶐�����
$admissibleTime = New-TimeSpan -Hours $admissibleTimeArray[0] -Minutes $admissibleTimeArray[1]
if ($timesDifference -le $admissibleTime) {
    exit 0
} else {
    exit 1
}