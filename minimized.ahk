FileAppend, [Автопилот] Выбран режим со свернутым окном`n, logs.txt
SendMode Input
SetTitleMatchMode, 2
SetKeyDelay, 0, 100
    
ControlSend, ahk_parent, {Pause},|  McSkill  |
ControlSend, ahk_parent, {Del down},|  McSkill  |
ControlSend, ahk_parent, {w down},|  McSkill  |
    
Loop{
	Random, randoption, 1, 20
	sleep 15000
	if (randoption=5){
		FileAppend, [Автопилот] Поворачиваю налево`n, logs.txt
		ControlSend, ahk_parent, {ScrollLock}, |  McSkill  |
	} else if (randoption=10){
		FileAppend, [Автопилот] Поворачиваю направо`n, logs.txt
		ControlSend, ahk_parent, {End}, |  McSkill  |
	} else if (randoption=15){
		FileAppend, [Автопилот] Поворачиваю назад`, затем направо`n, logs.txt
		ControlSend, ahk_parent, {Home}, |  McSkill  |
		sleep 3000
		ControlSend, ahk_parent, {ScrollLock}, |  McSkill  |
	} else if (randoption=20){
		FileAppend, [Автопилот] Поворачиваю назад`, затем налево`n, logs.txt
		ControlSend, ahk_parent, {Home}, |  McSkill  |
		sleep 3000
		ControlSend, ahk_parent, {End}, |  McSkill  |
	}
} 

~F12::
FileAppend, [Автопилот] Нажата F12`, завершаю работу`n, logs.txt
SetTitleMatchMode, 2
ControlSend, ahk_parent, {Del up},|  McSkill  |
ControlSend, ahk_parent, {w up},|  McSkill  |
exitapp