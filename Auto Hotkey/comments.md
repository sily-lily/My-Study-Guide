# Using Comments in AHK
Useful for describing what certain parts of your code does, that's about it.

Since this is a really basic part, I won't be going too in-depth about anything, just some examples and using it correctly.

### Using Proper Syntax
Here's an example on what you **can do**.
```ahk
; This is allowed! Stuff below will be taught in other lessons.

^j:: ; Ctrl + J
MsgBox, You pressed the Secret Keybind! Good job.
return
```

Now, an example of what you **cannot** do, that'll break the code.
```ahk
^j ; This is missing the `::` and would break the script
return
```
