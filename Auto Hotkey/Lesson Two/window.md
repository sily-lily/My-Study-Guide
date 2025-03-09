# Learning Window Managing in AHK
It's about now you realize things are increasing in difficulty heavily. And that's not okay. What I'm gonna do is give you a baby lesson, a break even! (_Kidding_)

Anyway, let's go over how you can manage different windows and control them.
- Expect **every lesson** to be more and more in-depth, as they get more complicated. Your peanut brain is going to have to figure it out.

If you're confused, like I was, about `WinGet` subcommands, scroll **all the way down**! I explain them in-detail and help you understand them.

---

### Learning More... 🔍
- **`WinActivate`**: Brings a specific Window up and focuses on it.
```ahk
if (WinExist("ahk_class Notepad")) {
  WinActivate ; This'll focus on Notepad Window itself
} else {
  MsgBox, % "Window doesn't exist!"
}
```
- **`WinClose`**: Close any Window immediately.
```ahk
WinClose, <Win. Title>, <Optional: Win. Title Text (Extra Title Text)>
WinClose, "ahk_class Notepad"
```
- **`WinExist`**: Determines if an app / program is open on your computer or not.
```ahk
if (WinExist("ahk_class Notepad")) { ; Change to any app you'd like.
  MsgBox, % "Notepad exists!!"
} else {
  MsgBox, % "Notepad does not exist, sadly.."
}
```
- **`WinMinimize`**: Minimize out of a Window instead of closing it.
```ahk
WinMinimize, <Win. Title>, <Optional: Win. Title Text (Extra Title Text)>
WinMinimize, "ahk_class Notepad"
```
- **`WinMove`**: Moves and resizes the Window to any given height.
```ahk
program := "ahk_class Notepad" ; The Notepad's Window

if (WinExist(program)) {
  WinActivate
  WinRestore
}

WinMove, %program%, , 150, 150, 500, 500 ; Move to X: 150, Y: 150, and resize to XY: 500.
```
- **`WinGet`**: Get any information about the focused Window.
```ahk
; WinGet, OutputVar, SubCommand, Title, WindowText

; Params:
; - OutputVar:   The variable that'll store the result.
; - SubCommand:  The specific info you wanna retrieve (e.g., "Title", "Class", "Pos", etc.)
; - Title:       The title of the Window.
; - WindowText:  The extra title text of the Window.

; Example of fetching the Size and Position:

WinGetPos, X, Y, Width, Height, A ; A refers to the Active Window.

MsgBox, % "Sizes: (X:" . Width . ", Y:" . Height . "), Position: (X:" . X . ", Y:" . Y . ")"
```
- **`WinRestore`**: Restore the Window if it has been minimized.
```ahk
if (WinExist("ahk_class Notepad")) {
  WinRestore
}
```

---

### Subcommands are Confusing 😭
If you're like me, and don't understand `WinGet` subcommands, you're in luck. Here's a special extra session dedicated to teaching you every `WinGet` subcommand.
- I used to be absolutely clueless on this section up until now. _You're welcome_.

Here's a list of the most common ones, which you're probably gonna end up using like 80% of them at some point.

- **`Title`**: Gets the title of a specific Window.
```ahk
WinGet, windowTitle, Title, "ahk_class Notepad"
MsgBox, % "The title of the window is: " . %windowTitle
```
- **`Class`**: Gets the class name of a Window.
```ahk
WinGet, windowClass, Class, "ahk_class Notepad"
MsgBox, % "The Window's class is: " . %windowClass%
```
- **`ID`**: Find the process ID of the program.
```ahk
WinGet, windowID, ID, "ahk_class Notepad"
MsgBox, % "The Window's PID is: " . %windowID%
```
- **`ProcessName`**: Gets the class process name of a Window, similar-ish to ID.
```ahk
WinGet, processName, ProcessName, "ahk_class Notepad"
MsgBox, % "The Window's process name is: " . %processName%
```
- **`List`**: Makes a list of all open Windows and their IDs.
```ahk
WinGet, idList, List
Loop, %isList%
{
  thisID := idList%A_Index%
  WinGetTitle, title, ahkID %thisID%
  MsgBox, % "Window ID of " . %title% . " is: " . %thisID%
}
```
- **`Count`**: Gets the count of every Window open.
```ahk
WinGet, windowCount, Count
MsgBox, % "There are " . %windowCount% . " open Windows."
```
- **`Style`**: Shows the Window style of the chosen Window.
```ahk
WinGet, windowStyle, Style, "ahk_class Notepad"
MsgBox, % "The Window's style is " . %windowStyle%
```
- **`ExStyle`**: Retrieves the extended Window style of the chosen Window.
```ahk
WinGet, windowExStyle, ExStyle, "ahk_class Notepad"
MsgBox, % "The extended Window style is: " . %windowExStyle%
```
- **`Pos`**: Gets the position and size of a Window.
```ahk
WinGetPos, X, Y, Width, Height, "ahk_class Notepad"
MsgBox, % "Sizes: (X:" . Width . ", Y:" . Height . "), Position: (X:" . X . ", Y:" . Y . ")"
```

Hopefully that makes sense. I broke down and showed you an example of **every one of the** most common `WinGet` choices.
- If I missed one, I'm sorry..
