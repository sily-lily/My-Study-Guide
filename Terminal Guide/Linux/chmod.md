### chmod 🛠️
Changing permissions on directories or files.
- **Purpose**: Insanely useful for changing / modding file / dir. permissions
- **Categories**: Owner (**u**), Group (**g**), Others (**o**)
- **Recursive**: Use `-R` for dir(s), e.g., `chmod -R 755 <dir. Name>`

### Understanding the Numbers 🤓
Firstly, you gotta know the numbers represent the permissions given to the **Owner**, **group**, and to the **other people** in a numeric (or **Octal**) format.

With a little bit of basic math, you can learn this _very easily_.

### Permission Breakdown
- **`0`**: _**No permissions**_
- **`1`**: _**Execute**_ only
- **`2`**: _**Write**_ only
- **`3`**: _**Write**_ and _**Execute**_ `(2 + 1 = 3)`
- **`4`**: _**Read**_ only
- **`5`**: _**Read**_ and _**Execute**_ `(4 + 1 = 5)`
- **`6`**: _**Read**_ and _**Write**_ `(4 + 2 = 6)`
- **`7`**: _**All permissions**_ `(4 + 2 + 1 = 7)`

### Learning the Words
- **`execute`**: Determines if you're allowed to **run the file**.
- **`write`**: Just means if you're allowed to **edit the file**.
- **`read`**: Simply, if you're allowed to **open** or **see the contents** of the file or not.
- **`dir`**: Is just "**directory**", otherwise known as a **folder**.

### Examples 😼
```
chmod <optional: -R (If applied, it'll edit folder)> <owner><group><others> <dir./file Name>
```
```bash
chmod 771 myApp.py
```
```bash
chmod -R 751 myFolder
```
