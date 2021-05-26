; Fonctions

Delay()
{
	global RNG = 0
	Random RNG,300,500
}

Search()
{
	global Yessay = 0
	
	ImageSearch, FoundX, FoundY, 644, 206, 997, 243, %A_ScriptDir%\104.png
	if ErrorLevel = 0 ; Si >= 104 trouvé
	{
	Yessay = 1
	MsgBox, , , >= 104 detecte`, item suivant, 1
	}
	ImageSearch, FoundX, FoundY, 644, 206, 997, 243, %A_ScriptDir%\105.png
	if ErrorLevel = 0 ; Si >= 104 trouvé
	{
	Yessay = 1
	MsgBox, , , >= 104 detecte`, item suivant, 1
	}
	ImageSearch, FoundX, FoundY, 644, 206, 997, 243, %A_ScriptDir%\106.png
	if ErrorLevel = 0 ; Si >= 104 trouvé
	{
	Yessay = 1
	MsgBox, , , >= 104 detecte`, item suivant, 1
	}
}

; /Fonctions

F1:: ; F1 = commencer

Beginning:
Loop
{
ImageSearch, FoundX, FoundY, 1397, 366, 1452, 420, %A_ScriptDir%\item.png ; Cherche item dans 4e case
if ErrorLevel = 1 
{
Break ; Si pas d'item trouvé, arrêt de la loop
}

Delay()
Sleep, %RNG%
Click, 1424, 394, 2 ; Double click item
Loop
{
Click, 910, 770 ; FM
Delay()
Sleep, %RNG%
Search()
if Yessay = 1 ; Si >= 104 trouvé on passe à l'item suivant
{
goto Beginning
}
}
}

MsgBox, , ,Plus aucun item a FM / Aucun item trouve ! ; Quand on sort de la 1ere loop, soit plus d'item à FM soit pas d'item trouvé
return

F2:: ; F2 = Arrêt de tout le script et reload
MsgBox, , ,Arret d'urgence !, 1
Reload
return



