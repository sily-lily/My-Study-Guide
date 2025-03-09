# Learning Various Statements in AHK
Wanna become a fucking overlord at Auto Hotkey? You're gonna need to know the basics.

In this _totally short_ documentation, I'm going to teach you how to **create an if statement**, **for loops**, and to make a simple **while loop**, read more to learn what they are and what they do.

---

### What's an If Statement..? 🤔
Well, think about it like this. Let's imagine a variable called "**age**" and it's set to **16**.

When we use if statements, we're able to check the value of our "**age**" variable and decide if it's good enough. If it is, we run an action. If it isn't, we can run an optional different action.

Here's an example if you still don't understand what I'm talking about:
```ahk
age := 16

if (age == 16) {
  MsgBox, % "You're old enough :D" ; If our "age" variable is EXACTLY 16.
} else {
  MsgBox, % "You are not old enough.. :(" ; If our variable doesn't meet the requirements, it'll run this.
}
```

---

### What are "for" and "while" Loops? 😭
Let's think about this. **For loops** are loops that run for a _certain amount of time_, unlike **while loops**, which are types of loops that run conditionally, or until you explicitly tell it not to.

**Still confused?** Well, let me show you an example of each to help you understand:
```ahk
; Here's a basic for loop!

myArray := ["John", "Abby", "Robert"] ; Create an Array with 3 people.
limit := 3 ; The max we want our loop to run.

for index, value in myArray {
  MsgBox, % value . " is my friend!" ; Goes through the "myArray" Array and makes a new MsgBox per person!
}
```

And now, for an example for a **while loop**:
```ahk
count := 0 ; The amount of times the loop has ran.
limit := 9 ; The amount of times we want the loop to run.

while (count != limit) {
  MsgBox, % "The loop has ran " . count + 1 . " times out of " . limit
  count++ ; Increase the count by 1.
}
```
