; ============================
; CONFIGURAÇÃO INICIAL
; ============================

iconOn := A_ScriptDir . "\black.ico"
iconOff := A_ScriptDir . "\red.ico"

Menu, Tray, Icon, %iconOn%

~Pause:: ; Ativar/Desativar Script
Suspend, Toggle
Sleep, 100

if (A_IsSuspended) {
    Menu, Tray, Icon, %iconOff%, , 1
} else {
    Menu, Tray, Icon, %iconOn%, , 1
}
return


; Reload automático no VSCode
#IfWinActive ahk_exe Code.exe
~^s::
    Sleep, 200
    Reload
    return
#IfWinActive

; ============================
; HOTKEYS (Chrome/Brave)
; ============================

$Numpad1:: ; ANDAMENTO    
    IfWinActive, ahk_exe Brave.exe    
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")        
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, anda
            Sleep, 50
            Send, {Enter 5}
            Return
        }
    }    
    SendInput {Numpad1}
Return


$Numpad2:: ; GAMEPASS
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, gamepass
            Sleep, 50
            Send, {Enter 5}
            Return
        }
    }
    SendInput {Numpad2}
Return


$Numpad3:: ; INFORME
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Send, +1
            Sleep, 50
            Send, informe
            Sleep, 50
            Send, {Enter 5}
            Sleep, 50
            Send, ^!r
            Return
        }
    }
    SendInput {Numpad3}
Return


$Numpad4:: ; AMIZADE 1
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            Nome := Clipboard

            Clipboard := "🙋‍♂️Olá, siga as instruções para receber o seu pedido:"
            Send, ^v
            Sleep, 25
            Send, +{Enter 2}
            Sleep, 25

            Clipboard := "1) ACEITE amizade da minha conta"
            Send, ^v
            Sleep, 25
            Send, +{Enter}
            Sleep, 25

            Clipboard := "Meu nome é >>> " Nome
            Send, ^v
            Sleep, 25
            Send, +{Enter 2}
            Sleep, 25

            Clipboard := "2) Entra no jogo, EU VOU TE SEGUIR!"
            Send, ^v
            Sleep, 25
            Send, +{Enter 2}
            Sleep, 25

            Clipboard := "3) Fique online e AGUARDE seu produto chegar!"
            Send, ^v
            Sleep, 25
            Send, {Enter 3}
            Return
        }
    }
    SendInput {Numpad4}
Return


$Numpad7:: ; ONLINE
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            Clipboard := "😎 Olá, Por favor avisa quando estiver online para receber seu pedido!!!"
            Sleep, 50
            Send, ^v
            Sleep, 50
            Send, {Enter 3}
            Return
        }
    }
    SendInput {Numpad7}
Return


$Numpad8:: ; REEMBOLSO
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, reembolso
            Sleep, 50
            Send, {Enter 3}
            Return
        }
    }
    SendInput {Numpad8}
Return


$Numpad9:: ; REEMBOLSADO
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, reembolsado
            Sleep, 50
            Send, {Enter 3}
            Return
        }
    }
    SendInput {Numpad9}
Return


F1:: ; ENTREGUE
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, {Enter 3}
            Sleep, 50
            Send, +1
            Sleep, 50
            Send, entregue
            Sleep, 100
            Send, {Enter 5}
            Sleep, 50
            Send, ^!r
        }
    }
Return


$F2:: ; BLOXFIM
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, bloxfim
            Sleep, 100
            Send, {Enter 5}
            Sleep, 50
            Send, ^!r
            Return
        }
    }
    SendInput {F2}
Return


F3:: ; ADD FRIEND (Chrome)
    WinActivate, ahk_class Chrome_WidgetWin_1 ahk_exe chrome.exe
    WinWaitActive, ahk_class Chrome_WidgetWin_1 ahk_exe chrome.exe
    Sleep, 100
    Click, 465, 110
    Sleep, 100
    Send, ^v
    Sleep, 100
    Click, 465, 160
    Sleep, 2000
    Click, 200, 455
Return


$F4:: ; AMIZADE 2
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Clipboard := "🚨 Te mandei pedido de amizade, aceita e entra no servidor!!!"
            Sleep, 50
            Send, ^v
            Send, {Enter 3}
        }
    }
    SendInput {F4}
Return


$F6:: ; AMIZADE 2
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "FunPay")
        {
            Sleep, 100
            Clipboard := "Hello friend. Please send me server link"
            Sleep, 50
            Send, ^v
            Send, {Enter}
        }
    }
    SendInput {F6}
Return


F7::   ; WELCOME
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, welcome
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
        }
    }
Return


$F8::   ; GAG 2
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, crescer2
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
        }
    }
    SendInput {F8}
Return


^F8::   ; BRAINROT 2
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, sb2
            Sleep, 100
            Send, {Enter 3}
        }
    }
Return


$F9::   ; online
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, hora
            Sleep, 100
            Send, {Enter 5}
        }
    }
    SendInput {F9}
Return

; ============================
; HOTKEYS ESPECIAIS
; ============================

~`::   ; CRASE Roblox
    WinGet, processName, ProcessName, A
    if (processName = "RobloxPlayerBeta.exe") {
        Sleep, 10
        SendInput, {vkC0sc029}  ; Crase `
        Sleep, 10
        SendInput, {vkBBsc00D}  ; Igual =
        Return
    }
Return


^Numpad1::
    Send, 50000000000000000000000
Return

^Numpad2::
    Send, 100000000000000000000000
Return

^Numpad3::
    Send, 200000000000000000000000
Return


^\:: ; POST / ENTREGUE
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 50
            Send, +1
            Sleep, 50
            Send, post
            Sleep, 500
            Send, {Enter 3}
            Send, {Enter 3}
            Sleep, 1000
            Send, +1
            Sleep, 50
            Send, entregue
            Sleep, 100
            Send, {Enter 5}
            Sleep, 50
            Send, ^!r
            Return
        }
    }
Return


^p:: ; PAGINA PEDIDO
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 100
            Send, pp
            Sleep, 100
            Send, {Enter 3}
            Send, {Enter 3}
            Sleep, 100
            Send, ^!r
            Return
        }
    }
Return

^!3::   ; INVENTARIO CHEIO
    Sleep, 200
    Send, /
    Sleep, 50
    Clipboard := "Seu inventário de Pets está cheio, por favor, libere espaço para receber o pedido."
    Sleep, 50
    Send, ^v
    Send, {Enter 3}
Return


^!4::   ; INSTRUÇÕES
    Sleep, 200
    Clipboard := "Olá, por favor siga as instruções para receber seu pedido! Basta ler o chat acima com atenção e seguir o passo a passo!"
    Sleep, 50
    Send, ^v
    Send, {Enter 3}
Return

; ============================
; MOVIMENTAÇÃO DE JANELAS
; ============================

^Numpad6:: ; GaG > Sumidos
    WinActivate, ahk_class Chrome_WidgetWin_1 ahk_exe Brave.exe
    WinWaitActive, ahk_class Chrome_WidgetWin_1 ahk_exe Brave.exe

	Sleep, 100
	Click, 670, 137
	Sleep, 50
	Click, 761, 314
	Sleep, 50
	Click, 960, 353
Return

^Numpad5:: ; Sumidos > GaG
    WinActivate, ahk_class Chrome_WidgetWin_1 ahk_exe Brave.exe
    WinWaitActive, ahk_class Chrome_WidgetWin_1 ahk_exe Brave.exe

    Sleep, 100
    Click, 671, 136
    Sleep, 50
    Click, 739, 311
    Sleep, 50
    Click, 944, 380
Return

^Numpad9:: ; Principal > Sumidos
    WinActivate, ahk_class Chrome_WidgetWin_1 ahk_exe Brave.exe
    WinWaitActive, ahk_class Chrome_WidgetWin_1 ahk_exe Brave.exe

    Sleep, 100
    Click, 671, 138
    Sleep, 50
    Click, 742, 311
    Sleep, 50
    Click, 930, 314
Return

^Numpad8:: ; Sumidos > Principal
    WinActivate, ahk_class Chrome_WidgetWin_1 ahk_exe Brave.exe
    WinWaitActive, ahk_class Chrome_WidgetWin_1 ahk_exe Brave.exe

    Sleep, 100
    Click, 671, 137
    Sleep, 50
    Click, 751, 317
    Sleep, 50
    Click, 976, 320
Return

; ============================
; TEXTOS AUTOMÁTICOS
; ============================

::/ve::Por favor aguarde um momento enquanto verifico. Te respondo em alguns minutos.
::/pg::Por favor utilize a página do seu pedido. Basta entrar nesse link e mandar uma mensagem que a nossa equipe vai te atender!
::/att::Atualizei a sua conta, tente entrar novamente. A senha mudou ok?

::/s1::
    Sleep, 50
    Clipboard := "https://www.roblox.com/share?code=375fabd990790b4bb3654803ca0c7a5e&type=Server"
    Sleep, 50
    Send, ^v
    Sleep, 50
    Send, {Enter}
Return

::/s2::
    Sleep, 50
    Clipboard := "https://www.roblox.com/share?code=2b29b67982301e4e9f2c22a010700599&type=Server"
    Sleep, 50
    Send, ^v
    Sleep, 50
    Send, {Enter}
Return

::/s3::
    Sleep, 50
    Clipboard := "https://www.roblox.com/share?code=eb63f8d9ecf63b438fe9078d9e4eb893&type=Server"
    Sleep, 50
    Send, ^v
    Sleep, 50
    Send, {Enter}
Return

::/g1::
    Sleep, 50
    Clipboard := "https://www.roblox.com/share?code=bdbf96cfb6553643a561097f87dbb0a0&type=Server"
    Sleep, 50
    Send, ^v
    Sleep, 50
    Send, {Enter}
Return

; ============================
; MANIPULAÇÃO DE COOKIES/USERS
; ============================

^F1:: ; GET "USER:PASS"
    Sleep, 100
    Send, ^h
    Sleep, 50
    Clipboard := "^([^:]*):([^:]*):"
    Send, ^v
    Sleep, 50
    Send, !{Enter}
    Send, {Right}
    Sleep, 50
    Send, +{End}
    Sleep, 50
    Send, {BackSpace}
    Sleep, 50
    Send, {BackSpace}
    Sleep, 50
    Send, ^a
    Sleep, 50
    Send, ^c
Return

^F2::   ; GET ""COOKIE"""
    Sleep, 100
    Send, ^h
    Sleep, 50
    Clipboard := "^([^:]*):([^:]*):"
    Send, ^v
    Sleep, 50
    Send, !{Enter}
    Sleep, 50
    Send, {BackSpace}
    Sleep, 50
    Send, ^a
    Sleep, 50
    Send, ^c
Return

^F3::   ; DELETE ""USER:PASS""" (remover usuário e senha DUPLICADOS)
    Sleep, 100
    Send, ^h
    Sleep, 50
    Clipboard := "^[a-zA-Z0-9_]+:[a-zA-Z0-9_@]+$"
    Send, ^v
    Sleep, 50
    Send, !{Enter}
    Sleep, 50
    Send, {Delete}
    Sleep, 50
    Send, {Delete}
Return

^F7::   ; DELETE ""EMPTY LINE""
    Sleep, 100
    Send, ^h
    Sleep, 50
    Clipboard := "^\s*$"
    Send, ^v
    Sleep, 50
    Send, !{Enter}
    Sleep, 50
    Send, {Delete}
Return

^F5::   ; SELECT ""DUPLICATED LINES + ORIGINAL"""
    Sleep, 100
    Send, ^h
    Sleep, 50
    Clipboard := "^(.*)(\n\1)+$"
    Send, ^v
    Sleep, 50
    Send, !{Enter}
    Sleep, 50
Return

^F6::   ; LOCALIZAR ""DUPLICATED LINES + ORIGINAL"""
    Sleep, 100
    Send, ^h
    Sleep, 50
    Clipboard := "^(.+)\n\1"
    Send, ^v
    Sleep, 50
    Send, !{Enter}
    Sleep, 50
Return
