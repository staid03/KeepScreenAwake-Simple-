﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance , force

;Version    Date        Author          Notes
;    0.1    29-SEP-2018 Hew Reid        Initial

;Script Purpose
;

;Main
mousegetpos , PrevXPosGot
sleepTimerMinutes = 1
sleepTimer := sleepTimerMinutes * 1000 * 60

Sleep , %sleepTimer%

loop , 
{
    mousegetpos , xPosGot

    ifequal , xPosGot , %PrevXPosGot%
    {
        Random, randomiseMove , 1, 800
        MouseMove, %randomiseMove%, %randomiseMove%
    }

    PrevXPosGot := xPosGot

    Sleep , %sleepTimer%
}

return