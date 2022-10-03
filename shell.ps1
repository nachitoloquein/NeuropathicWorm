[System.Windows.Forms.MessageBox]::Show("Hello Friend", "Hacked!")
Write-Host "Una cosa"
echo "Otra Cosa"
$variable = "Hola" 
if ($variable -eq "Hola"){
    echo "Tst"
}
else{
    echo "LOl"
}

Function Set-WallPaper($Value)
{
 Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value
 rundll32.exe user32.dll, UpdatePerUserSystemParameters
}

Set-WallPaper -value "C:\Users\edosa\Downloads\NeutopathicWorm\fsociety.jpg"

try{
Set-WallPaper -value "fsociety.jpg"
}catch{
  Write-Host "An error occurred:"
  Write-Host $_
}
mkdir troll
pause
exit