; <---> <---> <---> <---> <---> <---> <---> <---> <---> <---> ;

; Position Assignments & Variables ;

fightButtonPos := { posX: 1370, posY: 856 }
movePos := { heatWave: { posX: 853, posY: 798 }, flamethrower: { posX: 1646, posY: 793 }, flareBlitz: { posX: 857, posY: 918 }, fly: { posX: 1636, posY: 919 } }
selections := { no: { posX: 1488, posY: 715 }, yes: { posX: 1488, posY: 602 } }
interface := { menuGui: { posX: 45, posY: 470 }, pokemon: { posX: 85, posY: 407 }, flyButton: { posX: 512, posY: 385 }, map: { posX: 867, posY: 786 }, confirm: { posX: 1498, posY: 460 } }
npcs := { healer: { posX: 963, posY: 454 } }

; <---> <---> <---> <---> <---> <---> <---> <---> <---> <---> ;

; General Functions ;

lClickMouse(object) {
    MouseClick, left, object.posX, object.posY
}

clickOnMove(chosenMove) {
    global fightButtonPos

    lClickMouse(fightButtonPos)
    Sleep, 400

    lClickMouse(chosenMove)
}

pressKey(key, duration) {
    Send, {%key% down}
    Sleep duration
    Send, {%key% up}
}

; <---> <---> <---> <---> <---> <---> <---> <---> <---> <---> ;

; Playing Move Triggers ;

1::
    clickOnMove(movePos.heatWave) ; FIRST BATTLE MOVE SLOT ;
return

2::
    clickOnMove(movePos.flamethrower) ; SECOND BATTLE MOVE SLOT ;
return

3::
    clickOnMove(movePos.flareBlitz) ; THIRD BATTLE MOVE SLOT ;
return

4::
    clickOnMove(movePos.fly) ; FOURTH BATTLE MOVE SLOT ;
return

; <---> <---> <---> <---> <---> <---> <---> <---> <---> <---> ;

; Miscellaneous / Utility Triggers ;
; Control + Q, Control + W         ;

^q::
    MouseGetPos, mouseX, mouseY
    MsgBox, % "Mouse @ Position X:" . mouseX . ", Y:" . mouseY
return

^w::
    ExitApp
return

; <---> <---> <---> <---> <---> <---> <---> <---> <---> <---> ;

; General Pokemon Triggers        ;
; Shift + Q, Shift + E, Shift + R ;

+q:: 
    lClickMouse(selections.no)
    Sleep, 3000

    lClickMouse(selections.yes) ; DECLINE LEARNING MOVE ;
return

+e::
    lClickMouse(selections.no) ; DECLINE SWITCHING POKEMON ;
return

+r::
    lClickMouse(selections.yes) ; ACCEPT CONFIMATION CHOICE ;
return

; <---> <---> <---> <---> <---> <---> <---> <---> <---> <---> ;

; General External Movement Triggers ;
; Alt + Q                            ;

!q::
    lClickMouse(interface.menuGui) ; INSTANTLY HEAL POKEMON (REQUIRES "FLY") ;
    Sleep, 500
    lClickMouse(interface.menuGui)

    lClickMouse(interface.pokemon)
    Sleep, 500

    lClickMouse(interface.flyButton)
    Sleep, 500

    lClickMouse(interface.map)
    Sleep, 500

    lClickMouse(interface.confirm)
    Sleep, 4500

    pressKey("D", 1800)
    pressKey("S", 1600)
    pressKey("D", 1325)

    lClickMouse(npcs.healer)
    Sleep, 500

    lClickMouse(npcs.healer)
return

; <---> <---> <---> <---> <---> <---> <---> <---> <---> <---> ;
