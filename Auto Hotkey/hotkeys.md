# Learning About Hotkeys
Finally, we're at the part of the hotkeys.. anyway, let's talk about them.

If you don't know what a hotkey is, then let me explain quickly. Hotkeys are essentially actions than run **when one or more keys are pressed**. There, got it?

> [!NOTE]
> Hotkeys **are case-sensitive**, meaning "**h**" and "**H**" are different keys! Make sure you're keeping this in mind.

There are two different types of hotkeys in AHK: **Basic** and **Mutli-key**.

---

### How do you Assign Basic Hotkeys? 🤔
Well little Timmy, let me explain this. Please read and practice this until you understand it!

You're able to assign a hotkey by using the following syntax:
```ahk
^j::
  MsgBox, % "You pressed Control + J"
return

; "^" is the key to signal that Control should be pressed on your keyboard.
; Similarly, "j" is the letter that should be pressed alongside it.

; With that being said, we could make it just by pressing F by doing this:

f::
  MsgBox, % "You presesed the F key"
return
```

---

### How do I work with Mutli-Key Hotkeys? 😓
Similarly to basic hotkeys, you can add more supported keys by just adding a newline with up to 4 characters!"

Let's say you want to create a keybind that can be pressed with "**h**" and "**L**" AND "**Control + F**" keys? You can add new lines where you would add the hotkey of choice.

Still don't get it? Let me show you what I mean:
```ahk
^F::
L::
h::
  MsgBox, % "You triggered a multi-key hotkey!! Fired using the " . A_ThisHotkey . " hotkey!"
return

; Using this way, you can trigger this message using "Control + F", "L" AND "h"!
```
