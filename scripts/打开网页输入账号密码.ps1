#IE����ʱ�ĵȴ�����
function Wait($ie){
sleep 2
do{
sleep -Mi 200
}while($ie.Busy)
}
#����IE���ڵĺ���
function NavigateIE($url)
{
    $ie = new-object -com "InternetExplorer.Application";
    $ie.navigate($url);
    $ie.Visible=$true;
    [System.Threading.Thread]::Sleep(2000);
    return $ie;
}
#�ű���ʼ
$ie = NavigateIE('www.baidu.com')
#��ȡ�ٶ�������
$inputs=$ie.Document.getElementsByName('wd')
foreach($element in $inputs){
$element.value="��Ҫ����powershell"
 }