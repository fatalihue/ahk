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
; HOTKEYS (Chrome/Brave)
; ============================

^Numpad1:: ; ANDAMENTO
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            SendTextLine("🙋‍♂️Olá, seja bem vindo!", 2)
            SendTextLine("Seu pedido está na fila e será entregue nos próximos minutos")
            SendTextLine("Nossa equipe já está cuidando de tudo e logo você receberá seu pedido", 2)
            SendTextLine("😎​ Por favor AGUARDE A SUA VEZ ​😃")
            Sleep, 15
            SendInput, {Enter 3}
        }
    }
Return


^Numpad2:: ; BLANK NÃO FAZ NADA
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            Return
        }
    }
Return


^Numpad3:: ; INFORME
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 15
            Send, informe
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, {Enter}
        }
    }
Return


/*
^Numpad3:: ; INFORME
IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
            {
            Sleep, 100
            SendTextLine("🙋‍♂️Olá, vou localizar seu pedido!")
            SendTextLine("Por favor me informe algum desses dados:", 2)
            
            SendTextLine("1) E-MAIL cadastrado em nosso site.")
            SendTextLine("2) Nome completo do pagador.")
            SendTextLine("3) Número do pedido (ID da compra).")
            SendTextLine("4) Comprovante de Pagamento PIX.")
            Sleep, 15
            SendInput, {Enter 3}
            }
    }
Return
*/


^Numpad4:: ; AMIZADE
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            Nome := Clipboard

            Clipboard := "🙋‍♂️Olá, siga as instruções para receber o seu pedido:"
            Send, ^v
            Sleep, 15
            Send, +{Enter 2}
            Sleep, 15

            Clipboard := "1) ACEITE amizade da minha conta"
            Send, ^v
            Sleep, 15
            Send, +{Enter}
            Sleep, 15

            Clipboard := "Meu nome é >>> " Nome
            Send, ^v
            Sleep, 15
            Send, +{Enter 2}
            Sleep, 15

            Clipboard := "2) Entra no jogo, EU VOU TE SEGUIR!"
            Send, ^v
            Sleep, 15
            Send, +{Enter 2}
            Sleep, 15

            Clipboard := "3) Fique online e AGUARDE seu produto chegar!"
            Send, ^v
            Sleep, 15
            Send, {Enter 3}
            Return
        }
    }
Return


^Numpad7:: ; VOLTAR
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            SendTextLine("😎 Olá, Por favor avise quando estiver online para receber seu pedido! Estamos esperando você voltar!")
            Sleep, 15
            SendInput, {Enter 3}
        }
    }
Return


^Numpad8:: ; POLÍTICA DE COMPRA
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            SendTextLine("De acordo com nossa política de compra, disponível em: https://bloxbrasil.com.br/politica-compra Reembolsos só são possíveis se houver algum erro no produto ou na entrega. Reembolsos por arrependimento não são possíveis.")
            Sleep, 15
            SendInput, {Enter 3}
        }
    }
Return


^Numpad9:: ; REEMBOLSADO
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            SendTextLine("✅ Seu pedido foi Reembolsado com sucesso!")
            SendTextLine("✅ O dinheiro retornou a conta de origem do pagador!")
            SendTextLine("✅ Confira seu extrato bancário!")
            Sleep, 15
            SendInput, {Enter 3}
        }
    }
Return


$F1:: ; ENTREGUE
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 50
            Send, +1
            Sleep, 15
            Send, entregue
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, ^!r
        }
    }
    ;SendInput {F1}
Return


$F4:: ; AMIZADE
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            SendTextLine("🚨 Te mandei pedido de amizade, aceita e entra no servidor!")
            Sleep, 15
            SendInput, {Enter 3}
        }
    }
    SendInput {F4}
Return


$F6::   ; PLANTS VS BRAINROT
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 15
            Send, plant
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, {Enter}
        }
    }
    ;SendInput {F6}
Return


$F7:: ; WELCOME
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            SendTextLine("Olá, ficamos felizes em ter você aqui na **Blox Brasil**  <3", 2)

            SendTextLine("Como posso te ajudar?")
            Sleep, 15
            SendInput, {Enter 3}
        }
    }
    ;SendInput {F7}
Return

$F8::   ; GAG 2
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 15
            Send, !crescer2
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, {Enter}
        }
    }
    SendInput {F8}
Return

^F8::   ; BRAINROT 1
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 15
            Send, !artiststeal
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, {Enter}
        }
    }
Return

$F9::   ; HORÁRIO
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 15
            Send, hora
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, {Enter}
            Sleep, 15
            Send, {Enter}
            Sleep, 15
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
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 15
            Send, pp
            Sleep, 15
            Send, {Enter 3}
        }
    }
Return

^!3::   ; INVENTARIO CHEIO
    Sleep, 200
    Send, /
    Sleep, 15
    Clipboard := "Seu inventário está cheio, por favor, libere espaço para receber o pedido."
    Sleep, 15
    Send, ^v
    Sleep, 15
    Send, {Enter 3}
Return

^!4::   ; INSTRUÇÕES
    Sleep, 200
    Clipboard := "Olá, por favor siga as instruções para receber seu pedido! Basta ler o chat acima com atenção e seguir o passo a passo!"
    Sleep, 15
    Send, ^v
    Sleep, 15
    Send, {Enter 3}
Return

; ============================
; TEXTOS AUTOMÁTICOS
; ============================

::/ve::Por favor aguarde um momento enquanto verifico. Te respondo em alguns minutos.
::/pg::Por favor utilize a página do seu pedido. Basta entrar nesse link e mandar uma mensagem que a nossa equipe vai te atender!
::/att::Atualizei a sua conta, tente entrar novamente. A senha mudou ok?

!^Numpad1:: ; PLANTS VS BRAINROT - SERVER LINK
    {
        Sleep, 100
        Send, ^a
        Sleep, 15
        Clipboard := "https://www.roblox.com/share?code=c67750af8431004da977b5c950a8e45c&type=Server"
        Sleep, 15
        Send, ^v
        Sleep, 15
        Send, {Enter}
    }
Return

!^Numpad2:: ; PGROW A GARDEN - SERVER LINK
    {
        Sleep, 100
        Send, ^a
        Sleep, 15
        Clipboard := "https://www.roblox.com/share?code=e125623b3d46f34c9eb17a8192928d1f&type=Server"
        Sleep, 15
        Send, ^v
        Sleep, 15
        Send, {Enter}
    }
Return

!^Numpad3:: ; ENTREGA STEAL - SERVER LINK
    {
        Sleep, 100
        Send, ^a
        Sleep, 15
        ;Clipboard := "https://www.roblox.com/share?code=6ec72466389f3f4f82f447472d5ac61b&type=Server" ; estoque
        Clipboard := "https://www.roblox.com/share?code=9f37e0765740944da5089e4ddc900324&type=Server" ; artisticity
        Sleep, 15
        Send, ^v
        Sleep, 15
        Send, {Enter}
    }
Return

!Numpad4:: ; FORMATAR USER+PASS
    {        
        Sleep, 100
        Send, {Delete}
        Sleep, 15
        Send, {Delete}
        Sleep, 15
        Send, {Down}
        Sleep, 15
        Send, {Down}
        Sleep, 15
        Send, ^{Backspace}
        Sleep, 15
        Send, ^{Backspace}
        Sleep, 15
        Send, ^{Backspace}
        Sleep, 15
        Send, ^a
        Sleep, 15
        Send, ^c
        Sleep, 15
    }
Return

!Numpad5:: ; LOGAR USER+PASS
    {
        Sleep, 100
        Send, ^v
        Sleep, 15
        Send, ^+{Left}
        Sleep, 15
        Send, ^x
        Sleep, 15
        Send, {Backspace}
        Sleep, 15
        Send, {Tab}
        Sleep, 15
        Send, ^v
        Sleep, 15
        Send, {Enter}
    }
Return

; ============================
; MANIPULAÇÃO DE COOKIES/USERS
; ============================

^F1:: ; GET "USER:PASS"
    Sleep, 100
    Send, ^h
    Sleep, 15
    Clipboard := "^([^:]*):([^:]*):"
    Sleep, 15
    Send, ^v
    Sleep, 15
    Send, !{Enter}
    Sleep, 15
    Send, {Right}
    Sleep, 15
    Send, +{End}
    Sleep, 15
    Send, {BackSpace}
    Sleep, 15
    Send, {BackSpace}
    Sleep, 15
    Send, ^a
    Sleep, 15
    Send, ^c
Return

^F2::   ; GET ""COOKIE"""
    Sleep, 100
    Send, ^h
    Sleep, 15
    Clipboard := "^([^:]*):([^:]*):"
    Sleep, 15
    Send, ^v
    Sleep, 15
    Send, !{Enter}
    Sleep, 15
    Send, {BackSpace}
    Sleep, 15
    Send, ^a
    Sleep, 15
    Send, ^c
Return

^F7::   ; DELETE ""EMPTY LINE""
    Sleep, 100
    Send, ^h
    Sleep, 15
    Clipboard := "^\s*$"
    Sleep, 15
    Send, ^v
    Sleep, 15
    Send, !{Enter}
    Sleep, 15
    Send, {Delete}
Return

^F5::   ; SELECT ""DUPLICATED LINES + ORIGINAL"""
    Sleep, 100
    Send, ^h
    Sleep, 15
    Clipboard := "^(.*)(\n\1)+$"
    Sleep, 15
    Send, ^v
    Sleep, 15
    Send, !{Enter}
Return
