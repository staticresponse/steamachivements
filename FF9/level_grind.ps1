$x = -1
$run = 0
$wshell = New-Object -ComObject wscript.shell;
while($run -eq 0){
        Start-Sleep -Milliseconds 50
        $wshell.SendKeys('a')
        Start-Sleep -Milliseconds 50
        $wshell.SendKeys('{ENTER}')
}
