# Controlling Your Keyboard and Mouse using AHK
Achieving peak laziness is insanely easy, and learning how to **control your keyboard / mouse** is also really easy!

---

### How can I get my Mouse's Position? 🤔
Simple, you can use one line of code to get the **X and Y position** of your cursor!
- The follow code sample shows you how to **define your mouse position**:
```ahk
MouseGetPos, mouseX, mouseY ; Sets your mouse's X and Y positions to mouseX and mouseY.

MsgBox, % "Mouse is @: X:" . mouseX ", Y:" . mouseY
```

---

### How do I Manage my Mouse? 🖱️
That's easy, you just need to provide a set of coordinates (**X, Y**) for your mouse to travel to.
- Remember that MouseMove is **relative to your current mouse position**, meaning it'll move **X and Y** pixels **from your current mouse position**!
```ahk
; "MouseMove" takes in 2 arguments. X and Y, which are coordinate points on your screen.
; Sometimes it's annoying to work with because they aren't always the same for every person.

; Moving past that though, we can do this to simply move our mouse to X: 250, Y: 250:
MouseMove, 250, 250
MouseGetPos, mouseX, mouseY ; Save our mouse coordinates.

MsgBox, % "Mouse is @: X:" . mouseX . " Y:" . mouseY ; Should be just 250, 250..
```

Along with moving it, you can press your mouse button on-demand. You can do this in one line, just like shown below:
```ahk
Click                                    ; Press your mouse at your current mouse's X and Y positions.
MouseClick, left, 250, 250               ; X: 250, Y: 250, presses the left mouse button at the given pixels.
MouseClick, right, 100, 200              ; Similarly, presses the right mouse button at the given pixels.
MouseClick, middle, 50, 100              ; This will press your scroll-wheel button at X: 50, Y: 100.
MouseClickDrag, left, 100, 100, 200, 200 ; Click, hold, and drag your mouse from X: 100, Y: 100, to X: 200, Y: 200.
```
---

### Cool, How do I Manage my Keyboard Instead?
It's actually pretty similar to managing the mouse. Just it's not like it at all. Got it? Great.

> [!NOTE]
> Refer to the [Special Keys](https://github.com/mr-suno/My-Study-Guide/blob/main/Auto%20Hotkey/Special%20Keys.md#special-keys-in-ahk) page to learn about all of the different special keys AHK can press. You'll probably wanna know them at some point, best to get it outta the way now.

Here's, in bulk, a bunch of different methods, and what they do for effective keyboard manipulation:
```ahk
Send, am i alive??           ; Presses the keys to remake your message: "am i alive??".
Send, ^c                     ; Similarly, simulates pressing Control + C (Copy).
SendInput, hello, world!     ; Types "hello, world!" very quickly.
SendPlay, who.. am i?        ; Slower, but specific to games. Types just like SendInput.
SendRaw, some {Enter} text.  ; This'll just be "some {Enter} text", instead of making a new line!
GetKeyState("CapsLock", "T") ; Returns if "Caps Lock" is on / off, change to "F" to check for False.
KeyWait                      ; Waits for a key to be released / pressed.
```
