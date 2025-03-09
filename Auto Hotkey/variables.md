# Using Variables in AHK
Thankfully, Auto Hotkey spares our souls by making things **`dynamically typed`**, if you **don't know what this means**, don't worry about it. It's not important when learning how to code in AHK.

> [!NOTE]
> This is a **lot** of reading, it is **really important** you understand all of these concepts if you want to avoid making garbage code and using AI for 99% of your projects.

All you have to do to assign something to a variable is give it a name and a value.

### Variable Types 😼
Different ways a variable can be assigned.

They made this easy for you so you don't need to worry about each type, you just need to know **how to use each of them**.

- **`Integer`**: Numbers ranging from **0**-**9**.
- **`String`**: Putting text between two quotes, **"like this"**.
- **`Float`**: Similar to numbers, however they contain decimals, such as **3.14**.
- **`Boolean`**: Can be between two states, **true** and **false**.
- **`Array`**: A list of anything, coded like **[1, 2, "Hello"]**.
> You're able to look through an array using **indexes**, kind of like: **myArray[2]**, which in our case, returns `2`.
> This works because Arrays start at index of **`1`**, which is the **first object** before the comma.
- **`Dictionary`**: Similar to an Array, where things are assigned with a **Key** and **Value**, such as **{name: "Suno", age: 16}**
> Call a Key by specifically doing: **myDict["name"]**, where "**name**" is defined in your dictionary, and **myDict** is your dictionary variable.
- **`Objects`**: Same syntax as a dictionary, just used different
> Call a part of your dictionary by just doing: **myObject.name**, which in our case would be "**Suno**"
> You're also able to define **a method, or function** using objects.
```ahk
myObject := {
  name: "Suno",
  greet: () => { return "Hello, " . this.name }
}

MsgBox, % myObject.greet() ; This'll display "Hello, Suno!"
```

### Special Variables 👽
Auto Hotkey includes like a wide range of built-in "**global**" variables that you can use!

- **`A_ThisHotkey`**: Gives you the name of the currently running script.
- **`A_Index`**: When in a loop, this'll give you the current **index**, or how many loops in you are.
- **`A_ScriptDir`**: Simply hands you the current directory (or **folder**) of the currently running script.
- **`A_Now`**: Gives you the current date and time.

### Dynamic Variables 😜
This is basically the idea that you can change the contents of existing variables. Pretty cool, right?

Here's a fairly basic example:
```ahk
myVariable := "Just a lovely string" ; Defining myVariable to a string.
myVariable := "This is an evil string! We hacked it." ; Re-defining the "Just a lovely string" string.

MsgBox, % myVariable ; Displays "This is an evil string! We hacked it."
```
