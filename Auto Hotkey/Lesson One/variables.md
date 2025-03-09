# Using Variables in AHK
Thankfully, Auto Hotkey spares our souls by making things **`dynamically typed`**, if you **don't know what this means**, don't worry about it. It's not important when learning how to code in AHK.

> [!NOTE]
> This is a **lot** of reading, it is **really important** you understand all of these concepts if you want to avoid making garbage code and using AI for 99% of your projects.

All you have to do to assign something to a variable is give it a name and a value.

---

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

---

### Special Variables 👽
Auto Hotkey includes like a wide range of built-in "**global**" variables that you can use!

- **`A_ScriptName`**: Gives you the name of the currently running script.
- **`A_Index`**: When in a loop, this'll give you the current **index**, or how many loops in you are.
- **`A_ScriptDir`**: Simply hands you the current directory (or **folder**) of the currently running script.
- **`A_Now`**: Gives you the current date and time.

<details>
  <summary>See all <b>Special Variables</b></summary>

  - **`A_ThisFunc`**: The name of the function that's being ran.
  - **`A_ThisLabel`**: The name of the label that's being ran.
  - **`A_ThisHotkey`**: The hotkey that triggered the current event.
  - **`A_ExitReason`**: The reason for the script's exit.
  - **`A_ProgramName`**: The name of the script or program.
  - **`A_ScriptFullPath`**: The full filepath to the script or program.
  - **`A_ScriptVersion`**: The version the script is running on.
  - **`A_StartupTime`**: The exact time when the script started.
  - **`A_TimeSincePriorHotkey`**: The time since the last hotkey was fired.
  - **`A_ComputerName`**: The name of the user's computer.
  - **`A_UserName`**: The name of the account logged in.
  - **`A_Desktop`**: The filepath to the user's desktop.
  - **`A_DesktopHeight`**: The desktop height in pixels.
  - **`A_DesktopWidth`**: The width of the desktop in pixels.
  - **`A_ScreenWidth`**: The width of the monitor in pixels.
  - **`A_ScreenHeight`**: The height of the monitor in pixels.
  - **`A_ScreenDPI`**: The DPI (Dots per Inch) of the monitor in pixel.
  - **`A_ActiveWindowTitle`**: The name of the program that's actively focused.
  - **`A_ActiveWindowID`**: The process ID of the currently active window.
  - **`A_ActiveControl`**: The control that currently has focus.
  - **`A_Clipboard`**: The current contents of your clipboard.
  - **`A_ClipboardAll`**: All contents of your clipboard, including all formats.
  - **`A_Env`**: The environment variables.
  - **`A_ExitCode`**: The exit code of the script or program.
  - **`A_ProgramFiles`**: The filepath to the Program FIles directory.
  - **`A_ProgramFiles64`**: The filepath to the Program Files (x86) directory on 64-bit systems.
  - **`A_Temp`**: The filepath to the temporary files directory.
  - **`A_WinDir`**: The filepath to the Windows directory.
  - **`A_WinVersion`**: The version of Windows the user is running.
  - **`A_Win64`**: Tells you if the script is running on a 64-bit version of Windows.
  - **`A_OSType`**: Tells you the type of system (e.g., "**WIN32** or "**WIN64**").
  - **`A_Year`**: The current year.
  - **`A_Month`**: The current month of the year.
  - **`A_Day`**: The current day of the week.
  - **`A_Hour`**: The current hour of the day.
  - **`A_Min`**: The current minute of the hour.
  - **`A_Sec`**: The current second of the minute.
  - **`A_UTC`**: The current time in UTC.
  - **`A_NowUTC`**: The current UTC date and time.
  - **`A_Weekday`**: The current day of the week. (Alt: **A_Day**)
  - **`A_Week`**: The current week of the year.
  - **`A_Quarter`**: The current quarter of the year.
  - **`A_SecondsSinceStart`**: The number of secodns since the script was launched.
</details>

---

### Dynamic Variables 😜
This is basically the idea that you can change the contents of existing variables. Pretty cool, right?

Here's a fairly basic example:
```ahk
myVariable := "Just a lovely string" ; Defining myVariable to a string.
myVariable := "This is an evil string! We hacked it." ; Re-defining the "Just a lovely string" string.

MsgBox, % myVariable ; Displays "This is an evil string! We hacked it."
```
