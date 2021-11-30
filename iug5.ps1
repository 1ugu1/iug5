param($ip,$porta)
echo "~~~~~~~~~WELCOME TO IUG1~~~~~~~~~~"
echo "~                                ~"
echo "~        Powered by: 1ugu1       ~"
echo "~                                ~"
echo "~ this tool will discover all    ~"
echo "~ the up hosts in current        ~"
echo "~ network                        ~"
echo "~                                ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"



if (!$ip){
    echo "type './portscanning ip '"
}
    else {
$topports = 21,22,3306,80,443
try{ foreach ($porta in $topports){


if (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet){
echo "porta $porta aberta"
} }else {
    echo "porta $porta fechada"
}} catch{}
}
