tell application "System Events"
    repeat while "Cyberduck" is in (name of application processes)
        try
            tell process "Cyberduck" to set myValues to value of every static text of every sheet of front window
            if {{"Provide additional login credentials.", "Verification code."}} is in myValues then
                set totp to do shell script "/usr/local/bin/oathtool --totp --base32 $(sed -n '/^secret=/s///p' ~/.JAuth.rc)"
                tell application "System Events" to keystroke totp
                repeat while value of text field 1 of sheet 1 of front window of process "Cyberduck" is ""
                    delay 1.0E-3
                end repeat
                tell application "System Events" to key code 36
            else
                delay 0.3
            end if
        end try
    end repeat
end tell