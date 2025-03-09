# Learning Text Expansion using AHK
Are you a lazy dude like me? Well, if you are, then this is perfect for you. Thank the overlords for text replacement because using hotstrings you can turn messages like "**btw**" into "**by the way,**" entirely automatically.

This one might be a bit long because I'm going to add every detail you need to know about hotstrings to work with them properly. 😎

---

### Understanding the Basics and Syntax 😼
To create a sample hotstring, you can use the sample below:
```ahk
::Message::Replacement:: ; This will convert "Message" to "Replacement" when typed.

; For example, if you want to convert "btw" into "by the way", you can do this:

::btw::by the way,:: ; When typed, "btw" will turn into "by the way,".
```

When you type "**btw**" followed by a space, tab, or Enter, it will automatically replace "**btw**" with "**by the way,**".

---

### Hotstring Trigger Options 😉
Usually, hotstrings are triggered by typing the sequence **followed by a terminated character** (e.g., space, tab, Enter).
- Only real ones know you can customize the trigger behavior using **options**.

Here are some common hotstring options for you to use:
1. **`*`**: The message is converted **as soon** as you type the last character, no terminating character required.
2. **`?`**: The given message will be converted **even if** inside another word.
3. **`B0`**: When converted, it won't remove the converted message, instead, it'll add it onto it.
4. **`C`**: This'll make it so the message will be case-sensitive.
5. **`O`**: The terminating character (e.g., space, tab, Enter) is not sent after the replacement.
6. **`R`**: The replacement text is sent as raw text, without interpreting special characters like **enter** or **tab**.

---

# Option Combination
Are you wanting to complicate things even more? Let me introduce you into combining options.
- Combining options allows you to save lines, time, and your energy, allowing for peak laziness!

Let me show you an example of what I mean:
```ahk
:*:ez::well played, i had fun!      ; Converts immediately after typing "z"
:*?:ez::thanks for playing with me! ; Stuff from the first sample + it'll form in full sentences!
```

---

### Some Hotstring Examples

Still don't understand? You can review what you've learnt from the provided examples given below:
```ahk
:*:wtf::water the fish ; Using "*", we're telling it to convert immediately after we type "f".
:?:so::soothing        ; Since we're using "?", words like "soul" will be turned into "soothingul".
:B0:cra::crayon        ; Using "B0", whenever we type "cra", it'll be turned into "cracrayon".
:C:btw::by the way,    ; Because we're using "C", we're telling it to ONLY convert "btw" (all lowercase).
:O:soap::soup          ; This turns into "soup␠", using this it removes the terminating character.
:R:test::te{Enter}st   ; With "R", it will stop it from turning into "te st", where st is on a new line.
```
