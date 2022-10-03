@echo off
echo "Hola"
$variable
if  ($variable -like "Hola"){
    echo "Chao"
}
else{
    Echo "Chupalo"
}
[void][System.Windows.Forms.MessageBox]::Show('Test','Title')
pause
