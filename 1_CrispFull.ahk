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
            Sleep, 100
            SendInput, {Enter 3}
        }
    }
Return

^Numpad2:: ; ONLINE
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
            SendTextLine("🙋‍♂️Olá, vou localizar seu pedido!")
            SendTextLine("Por favor me informe algum desses dados:", 2)

            SendTextLine("1) E-MAIL cadastrado em nosso site.")
            SendTextLine("2) Nome completo do pagador.")
            SendTextLine("3) Número do pedido (ID da compra).")
            SendTextLine("4) Comprovante de Pagamento PIX.")
            Sleep, 100
            SendInput, {Enter 3}
        }
    }
Return

^Numpad4:: ; AMIZADE 1
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
Return

^Numpad7:: ; INFORME
    IfWinActive, ahk_exe Brave.exe
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

^Numpad8:: ; INFORME
    IfWinActive, ahk_exe Brave.exe
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

^Numpad9:: ; INFORME
    IfWinActive, ahk_exe Brave.exe
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
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A
        if InStr(title, "crisp")
        {
            Sleep, 100
            SendTextLine("🎉Entrega realizada com sucesso!🎉")
            SendTextLine("Muito obrigado por comprar na **Blox Brasil**, ficamos felizes em ter você aqui!", 2)

            SendTextLine("🎁 Utilize o cupom **VOLTESEMPRE** e tenha 12% de desconto na sua próxima compra!!")
            Sleep, 100
            SendInput, {Enter 3}
            Sleep, 50
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
            Sleep, 100
            SendInput, {Enter 3}
        }
    }
    SendInput {F4}
Return

$F6::   ; PLANT VS BRAINROT
    IfWinActive, ahk_exe Brave.exe
    {
        WinGetTitle, title, A        
        if InStr(title, "crisp")
        {
            Sleep, 100
            Send, +1
            Sleep, 50
            Send, plant
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
    IfWinActive, ahk_exe Brave.exe
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

$F8::   ; GAG 2
    IfWinActive, ahk_exe Brave.exe
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
            Send, art
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
; TEXTOS AUTOMÁTICOS
; ============================

::/ve::Por favor aguarde um momento enquanto verifico. Te respondo em alguns minutos.
::/pg::Por favor utilize a página do seu pedido. Basta entrar nesse link e mandar uma mensagem que a nossa equipe vai te atender!
::/att::Atualizei a sua conta, tente entrar novamente. A senha mudou ok?

!^Numpad1:: ; PLANTS VS BRAINROT
    {
        Sleep, 50
        Send, ^a
        Sleep, 50
        Clipboard := "https://www.roblox.com/share?code=c67750af8431004da977b5c950a8e45c&type=Server"
        Sleep, 50
        Send, ^v
        Sleep, 50
        Send, {Enter}
    }
Return

!^Numpad2:: ; PGROW A GARDEN
    {
        Sleep, 50
        Send, ^a
        Sleep, 50
        Clipboard := "https://www.roblox.com/share?code=e125623b3d46f34c9eb17a8192928d1f&type=Server"
        Sleep, 50
        Send, ^v
        Sleep, 50
        Send, {Enter}
    }
Return

!^Numpad3:: ; ENTREGA STEAL
    {
        Sleep, 50
        Send, ^a
        Sleep, 50
        Clipboard := "https://www.roblox.com/share?code=6ec72466389f3f4f82f447472d5ac61b&type=Server"
        Sleep, 50
        Send, ^v
        Sleep, 50
        Send, {Enter}
    }
Return

!Numpad4:: ; copiar formato
    {        
        Send, {Delete}
        Sleep, 50
        Send, {Delete}
        Sleep, 50
        Send, {Down}
        Sleep, 50
        Send, {Down}
        Sleep, 50
        Send, ^{Backspace}
        Sleep, 50
        Send, ^{Backspace}
        Sleep, 50
        Send, ^{Backspace}
        Sleep, 50
        Send, ^a
        Sleep, 50
        Send, ^c
        Sleep, 50
    }
Return

!Numpad5:: ; PLANTS VS BRAINROT
    {
        Sleep, 100
        Send, ^v
        Sleep, 100
        Send, ^+{Left}
        Sleep, 100
        Send, ^x
        Sleep, 100
        Send, {Backspace}
        Sleep, 100
        Send, {Tab}
        Sleep, 100
        Send, ^v
        Sleep, 100
        Send, {Enter}
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
