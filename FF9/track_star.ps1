$x = -1
$run = 0
start-sleep -Seconds 3 # For you to get to the FF9 window
$wshell = New-Object -ComObject wscript.shell;
while($run -eq 0){
    if ($x -eq -1){
        Write-Output "Start interaction"
        $y = 0
        $wshell.SendKeys('{ENTER}')
        while($y -lt 20){ #spam enter for 10.5 sec
            start-sleep -Milliseconds 500
            $y++
            Write-Output $y
            $wshell.SendKeys('{ENTER}')
        }
        Write-Output "end interaction"
        $x = 0       
    }
    elseif ($x -le 130 -and $x -ge 0){ #run the race
        if ($x -eq 0){Write-Output "start race"}
        Start-Sleep -Milliseconds 50
        $wshell.SendKeys('c')
        Start-Sleep -Milliseconds 50
        $wshell.SendKeys('b')
        $x++
    }
    else {
        write-output "init wait"
        start-sleep -Milliseconds 1800
        $x = -1        
        $wshell.SendKeys('{ENTER}')
        start-sleep -Seconds 1
        $wshell.SendKeys('{ENTER}')
        start-sleep -Seconds 1
        $wshell.SendKeys('{ENTER}')
        start-sleep -Milliseconds 500
    }
}
