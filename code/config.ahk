#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

gui, new, , skin settings

; cursortrail
gui, add, text, x10 yp+10, cursortrail
gui, add, checkbox, xp+50 vcursortrail

; mania note image
gui, add, text, x10 yp+25, mania note image: 
gui, add, DropDownList, xp+100 yp-3 vmania, bars||circles|diamonds|arrows

; confirmation buttons
gui, add, Button, default x+-10 yp+30 w80, OK
gui, add, Button, xp-90 w80, Cancel

gui, show, w1280 h720 AutoSize Center