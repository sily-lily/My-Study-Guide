; <---> <---> <---> <---> <---> <---> <---> <---> <---> <---> ;

; Position Assignments & Variables ;

fightButtonPos := { posX: 1370, posY: 856 }
movePos := { heatWave: { posX: 853, posY: 798 }, flamethrower: { posX: 1646, posY: 793 }, flareBlitz: { posX: 857, posY: 918 }, fly: { posX: 1636, posY: 919 } }
selections := { no: { posX: 1488, posY: 715 }, yes: { posX: 1488, posY: 602 } }
interface := { menuGui: { posX: 45, posY: 470 }, pokemon: { posX: 85, posY: 407 }, flyButton: { posX: 512, posY: 385 }, confirm: { posX: 1498, posY: 460 } }
npcs := { yes: { posX: 1498, posY: 432 }, healer: { posX: 963, posY: 454 } }
cancelButtonPos := { posX: 1260, posY: 943 }
zones := { mitisTown: { posX: 867, posY: 786 }, cheshmaTown: { posX: 895, posY: 843 }, silventCity: { posX: 950, posY: 899 }, brimberCity: { posX: 788, posY: 834 }, lagoonaLake: { posX: 733, posY: 724 }, roseCoveCity: { posX: 633, posY: 564 }, cragonosCliffs: { posX: 640, posY: 401 }, anthianCity: { posX: 1112, posY: 656 }, arediaCity: { posX: 769, posY: 262 } }
tixSpot := { posX: 740, posY: 979 }

inSkiball := false

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

openMap() {
    global interface

    lClickMouse(interface.menuGui)
    Sleep, 500
    lClickMouse(interface.menuGui)

    lClickMouse(interface.pokemon)
    Sleep, 500

    lClickMouse(interface.flyButton)
}

; <---> <---> <---> <---> <---> <---> <---> <---> <---> <---> ;

; Playing Move Triggers ;
; 1-5                   ;

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

5::
    lClickMouse(cancelButtonPos) ; AUTO RUN FROM BATTLE ;
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
    lClickMouse(selections.yes) ; ACCEPT BATTLE CONFIMATION CHOICE ;
return

+t::
    lClickMouse(npcs.yes) ; ACCEPT CHAT CONFIRMATION CHOICE ;
return

; <---> <---> <---> <---> <---> <---> <---> <---> <---> <---> ;

; General External Movement Triggers ;
; Shift + 1, Shift + 2               ;

+1::
    openMap()
    Sleep, 500

    lClickMouse(zones.mitisTown)
    Sleep, 500

    lClickMouse(interface.confirm) ; INSTANTLY HEAL POKEMON (REQUIRES "FLY") ;
    Sleep, 4500

    pressKey("D", 1800)
    pressKey("S", 1600)
    pressKey("D", 1325)

    lClickMouse(npcs.healer)
    Sleep, 500

    lClickMouse(npcs.healer)
return

+2::
    InputBox, userInput, Input Required, "Where do you wanna go?: "
    if (ErrorLevel) {
        return
    }

    result := Format("{:L}", userInput) ; AUTOMATICALLY FLY TO ANY CITY ;

    openMap()

    Sleep, 500
    if (result == "mitis") {
        lClickMouse(zones.mitisTown)
    } else if (result == "cheshma") {
        lClickMouse(zones.cheshmaTown)
    } else if (result == "silvent") {
        lClickMouse(zones.silventCity)
    } else if (result == "brimber") {
        lClickMouse(zones.brimberCity)
    } else if (result == "lagoona") {
        lClickMouse(zones.lagoonaLake)
    } else if (result == "rosecove") {
        lClickMouse(zones.rosecoveCity)
    } else if (result == "cragonos") {
        lClickMouse(zones.cragonosCliffs)
    } else if (result == "anthian") {
        lClickMouse(zones.anthianCity)
    } else if (result == "aredia") {
        lClickMouse(zones.arediaCity)
    } else {
        MsgBox, % "Area couldn't be found! Try somewhere that exists."
        return
    }

    Sleep, 500
    lClickMouse(interface.confirm)
return

; <---> <---> <---> <---> <---> <---> <---> <---> <---> <---> ;

; Arcade Triggers      ;
; Shift + 3, Shift + 4 ;

playSkiball() {
    #Persistent
    SetTitleMatchMode, 2

    colorToFind := 0x62A44A
    tolerance := 0

    xStart := 0
    yStart := 0

    xEnd := A_ScreenWidth
    yEnd := A_ScreenHeight

    PixelSearch, foundX, foundY, xStart, yStart, xEnd, yEnd, colorToFind, tolerance, Fast

    if (ErrorLevel == 0) {
        found := false
        surroundingOffsets := [[0, -1], [0, 1], [-1, 0], [1, 0]]

        for index, offset in surroundingOffsets {
            checkX := foundX + offset[1]
            checkY := foundY + offset[2]
            
            PixelGetColor, surroundingColor, checkX, checkY, RGB
            surroundingColorBGR := (surroundingColor & 0xFF) << 16 | (surroundingColor & 0xFF00) | (surroundingColor & 0xFF0000) >> 16
            
            if (surroundingColorBGR = colorToFind) {
                found := true
                break
            }
        }

        if (found) {
            MouseClick, left, foundX, foundY
        }
    }
}

+3::
    inSkiball := true

    while (inSkiball == true) {
        playSkiball()
        Sleep, 7000
    
        localCount := 0
        total := 8
    
        while (localCount <= 8) {
            lClickMouse(tixSpot)
            localCount++
            
            Sleep, 4000
        }

        Sleep, 4500
    }
return

+4::
    if (inSkiball == true) {
        inSkiball := false

        MsgBox, % "Disabled Ski-ball Auto farm"
    } else {
        MsgBox, % "Ski-ball Auto farming must be enabled first"
    }
return
