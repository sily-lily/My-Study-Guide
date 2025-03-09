# Learning Window Managing in AHK
It's about now you realize things are increasing in difficulty heavily. And that's not okay. What I'm gonna do is give you a baby lesson, a break even! (_Kidding_)

Anyway, let's go over how you can manage different windows and control them.
- Expect **every lesson** to be more and more in-depth, as they get more complicated. Your peanut brain is going to have to figure it out.

If you're confused, like I was, about `WinGet` subcommands, I'm sorry, I am too buddy.

---

### Learning More... 🔍
- **`Run`**: Opening a Window / program of your choice.
```ahk
Run "Notepad" ; Open the Notepad program
```
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
