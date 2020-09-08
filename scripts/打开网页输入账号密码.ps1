#IE运行时的等待函数
function Wait($ie){
sleep 2
do{
sleep -Mi 200
}while($ie.Busy)
}
#打开新IE窗口的函数
function NavigateIE($url)
{
    $ie = new-object -com "InternetExplorer.Application";
    $ie.navigate($url);
    $ie.Visible=$true;
    [System.Threading.Thread]::Sleep(2000);
    return $ie;
}
#脚本开始
$ie = NavigateIE('www.baidu.com')
#获取百度搜索框
$inputs=$ie.Document.getElementsByName('wd')
foreach($element in $inputs){
$element.value="我要搜索powershell"
 }