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

SendTextLine(text, newlines := 1)
{
    oldClip := ClipboardAll
    Clipboard := text
    ClipWait, 0.3
    SendInput, ^v
    Sleep, 50
    SendInput, +{Enter %newlines%}
    Sleep, 50
    Clipboard := oldClip
}

; ============================

^Numpad1:: ; ANDAMENTO
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, anda
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
        }
    }
Return

^Numpad3:: ; INFORME
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, informe
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
        }
    }
Return

^Numpad4:: ; AMIZADE 1
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            Nome := Clipboard

            SendTextLine("🙋‍♂️Olá, siga as instruções para receber o seu pedido:", 2)
            SendTextLine("1. ACEITE pedido de amizade")
            SendTextLine("Nome = " Nome, 2)
            SendTextLine("2. Entra no jogo!", 2)
            SendTextLine("3. Fique online e AGUARDE. Eu vou até você!")
            Sleep, 100
            SendInput, {Enter 3}
        }
    }
Return

^Numpad7:: ; ONLINE
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            SendTextLine("😎 Olá, Por favor avise quando estiver online para receber seu pedido! Estamos esperando você voltar!")
            Sleep, 100
            SendInput, {Enter 3}
        }
    }
Return

^Numpad8:: ; REEMBOLSO
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            SendTextLine("De acordo com nossa política de compra, disponível em: https://bloxbrasil.com.br/politica-compra Reembolsos só são possíveis se houver algum erro no produto ou na entrega. Reembolsos por arrependimento não são possíveis.")
            Sleep, 100
            SendInput, {Enter 3}
        }
    }
Return

^Numpad9:: ; PEDIDO REEMBOLSADO COM SUCESSO
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            SendTextLine("✅ Seu pedido foi Reembolsado com sucesso!")
            SendTextLine("✅ O dinheiro retornou a conta de origem do pagador!")
            SendTextLine("✅ Confira seu extrato bancário!")
            Sleep, 100
            SendInput, {Enter 3}
        }
    }
Return

$F1:: ; ENTREGUE
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, entregue
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
            Sleep, 50
            Send, ^!r
        }
    }
    ;SendInput {F1}
Return

$F2:: ; BLOXFIM
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, bloxfim
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, ^!r
        }
    }
    SendInput {F2}
Return

$F3:: ; AddFriend
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, ^!1
            Sleep, 100
            Send, ^+f
            Sleep, 100
        }
    }
    SendInput {F3}
Return

$F4:: ; AMIZADE
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            SendTextLine("🚨 Te mandei pedido de amizade, aceita e entra no servidor!")
            Sleep, 100
            SendInput, {Enter 3}
        }
    }
    SendInput {F4}
Return

$F6::   ; PLANT VS BRAINROT
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, plants2
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
        }
    }
    ;SendInput {F6}
Return

$F7:: ; WELCOME
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            SendTextLine("Olá, ficamos felizes em ter você aqui na **Blox Brasil**  <3", 2)

            SendTextLine("Como posso te ajudar?")
            Sleep, 100
            SendInput, {Enter 3}
        }
    }
    ;SendInput {F7}
Return

^F8::   ; GAG 2
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, !crescer2
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
        }
    }
    ;SendInput {F8}
Return

F8::   ; BRAINROT 2
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 100
            ;Send, st2
            Send, tsunami
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
            Sleep, 100
            Send, {Enter}
        }
    }
Return

$F9::   ; online
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
            Sleep, 100
            ;Send, ^!r
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

!Numpad2::
    Send, 100000000000000000000000
Return

^p:: ; PAGINA PEDIDO
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
        }
    }
Return

^!3::   ; INVENTARIO CHEIO
    WinGet, processName, ProcessName, A
    if (processName = "RobloxPlayerBeta.exe")
    {
        oldClip := ClipboardAll
        Sleep, 200
        Send, /
        Sleep, 50
        Clipboard := "Seu inventário de Pets está cheio, por favor, libere espaço para receber o pedido."
        Sleep, 50
        Send, ^v
        Send, {Enter 3}
        Sleep, 50
        Clipboard := oldClip
    }
Return


^!4::   ; INSTRUÇÕES
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            oldClip := ClipboardAll
            Sleep, 200
            Clipboard := "Olá, por favor siga as instruções para receber seu pedido! Basta ler o chat acima com atenção e seguir o passo a passo!"
            Sleep, 50
            Send, ^v
            Send, {Enter 3}
            Sleep, 50
            Clipboard := oldClip
        }
    }
Return

; ============================
; TEXTOS AUTOMÁTICOS
; ============================

::/ve::Estamos verificando o seu pedido, por favor aguarde um instante. Te aviso o mais rápido possível!
::/pg::Por favor utilize a página do seu pedido. Basta entrar nesse link e mandar uma mensagem que a nossa equipe vai te atender!
::/att::Sua conta foi atualizada. Tente entrar novamente. A senha mudou ok? Copia e cola a senha nova que te enviei!
::/pv::Por favor entre em um servidor público e aguarde que eu vou te seguir!
::/bb::bloxbrasil123
::/loc::Nenhum pedido localizado com essas informações. Por favor verifique se enviou os dados corretos para que seu pedido possa ser encontrado!
::/cafe::me encontre no café do SEA 2

!^Numpad1:: ; PLANTS VS BRAINROT
    {
        oldClip := ClipboardAll
        Sleep, 50
        Send, ^a
        Sleep, 50
        Clipboard := "https://www.roblox.com/share?code=edc23232995f4f4987ad9e89e002eb47&type=Server"
        Sleep, 50
        Send, ^v
        Sleep, 50
        Send, {Enter}
        Sleep, 50
        Clipboard := oldClip
    }
Return

!^Numpad2:: ; PGROW A GARDEN
    {
        oldClip := ClipboardAll
        Sleep, 50
        Send, ^a
        Sleep, 50
        Clipboard := "https://www.roblox.com/share?code=b0031b336bde914e9cb7a099310c2a2a&type=Server"
        Sleep, 50
        Send, ^v
        Sleep, 50
        Send, {Enter}
        Sleep, 50
        Clipboard := oldClip
    }
Return

!^Numpad3:: ; ENTREGA STEAL
    {
        oldClip := ClipboardAll
        Sleep, 50
        Send, ^a
        Sleep, 50
        Clipboard := "https://www.roblox.com/share?code=ca4d03bbc554e344afe4b565d10e9a5d&type=Server" ;tsunami
        ;Clipboard := "https://www.roblox.com/share?code=37bd7781b9ee324ca51fae4abce8b623&type=Server" ;restoque1
        ;Clipboard := "https://www.roblox.com/share?code=c70019b491c98c408eb00b1f542bab79&type=Server" ;restoque2
        ;Clipboard := "https://www.roblox.com/share?code=551ccd4a33920a47b3d2d928e590e91d&type=Server" ;st2
        Sleep, 50
        Send, ^v
        Sleep, 50
        Send, {Enter}
        Sleep, 50
        Clipboard := oldClip
    }
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
