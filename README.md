# NC Filesystem

We've all been in that situation where we don't know how best to organise our files. It's so easy to just save files all over the place and often with unhelpful names.

Such a fate has befallen the Northcoders central file system and it's your job to give it a good spring clean!

**If you need to reset the Northcoders filesystem at any time just run the** `./reset-filesystem` **script**

---

## **Section 1 - Checks and Reports**

Before we can start organising the Northcoders files there are some things we need to check.

It would also be helpful to create some reports about the filesystem for future use.

</br>

### **Task 1** - _Check if a staff file exists_

Within the very helpfully named `stuff` directory there are a number of staff files. Your task is to create a script that checks if files for given staff members are present in the directory.

All staff files follow the same naming convention of `staff-NAME.json` for example the file `staff-Duncan.json`.

Your script should print out a suitable message to the terminal indicating if the staff file can be found.

While you could hard-code the name of the staff member that you wish to search for within the script it would be nicer (and much more reusable) if you could pass a name to the script. For example:

```sh
check-staff-file-exists "Duncan"
# prints "Staff file found" to the terminal
```

See if you can find out how to make use of command line arguments.

**Staff members you could look for:**

    Duncan
    Dave
    Poonam
    Alex
    Verity
    Joe
    Sarah
    David
    Cat

</br>

### **Task 2** - _Check file type_

The `code` directory is absolutely jam-packed, to help us sift through the contents you should create a script that prompts the user for a name of a file/directory and reports on whether it is a file or a directory.

If it is a directory you should also list the contents of said directory.

Example use:

```sh
./section-1/2-check-file-type

...

# If user inputs "top-secret-sprint-solutions" something like this shoult be printed to the terminal:

top-secret-sprint-solutions is a directory

Contents of top-secret-sprint-solutions:

todo.txt
```

</br>

### **Task 3** - _Find cat pictures_

Over the years Northcoders has gathered a wonderful selection of cat pictures. However they are saved all over the place and are not named in a helpful manner.

Having said that these cat pictures are the only `jpeg` files in our file system which could be useful when locating them!

Your job is to create a `cat-pics.txt` file within the `/section-1/reports` directory that lists the file paths to each cat picture. For example:

```txt
> /section-1/reports/cat-pics.txt

./nc-filesystem/stuff/1.jpeg
etc...
etc...
```

> ❗ Make sure you only store the information about files contained within the `nc-filesystem`, **_not_** the nc-filesystem-backup!

The [find](https://manned.org/find) command (and some of it's associated options) could come in very handy here!

</br>

---

## **Section 2 - Cleaning up the filesystem**

Now we've run a few checks on the filesystem and created a few reports it's time for a good old ✨*spring clean*✨. Let's sort out the mess.

</br>

### **Task 1** - _Delete empty files_

First things first you may or may not have noticed that there are a number of empty files. Who know's why they exist, one theory is that people accidentally create files that they don't need. Or maybe it's a poltergeist, who knows!

Your task is to create a script that finds these empty files and removes them.

There are a number of ways you could check if a file is empty. A good option could be using the [wc](https://manned.org/wc.1) command.

> ❗ Keep in mind that the `rm` command will **permanently remove files/directories** (not just move them to the bin) so should be used with care. Personally I like to use [this](https://github.com/sindresorhus/trash-cli) tool which makes removing files safer and reversible. You can read more about how not to "`rm` yourself" [here](https://github.com/sindresorhus/guides/blob/main/how-not-to-rm-yourself.md#safeguard-rm)

</br>

### **Task 2** - _Move the cats_

Remember how you created a list of cat picture file paths? It's now time to use that information!

Create a script that uses the data in `/section-1/reports/cat-pics.txt` (created in section 1, task 2) and moves the files into a `cat-pics` directory.

</br>

### **Task 3** - _Rename incorrectly named files_

In the `code` directory you'll notice that some files and directories start with `fun-`/`be-`/`de-`. However only the **directories** should have this naming convention.

Your job is to create a script that removes the `fun-`/`be-`/`de-` prefix from files but leave the directories untouched.

> You could refactor your `2-check-file-type` script to accept an argument instead of an input and then use that script to check the contents on the `code` directory. However this is by no means the only way to approach this task.

</br>

### **Task 4** - _Organise code_

Now for a bit of a hefty task, it's time to organise the code.

If you have a look at the current filesystem you'll see that there are a range of files and directories containing code written in a number of different programming languages.

</br>

**Within the code directory you should end up with a structure like this:**

```txt
/code
  /javascript
    /sprints
    /katas
    /loose
  /python
    /sprints
    /katas
    /loose
  /go
    /katas
    /loose
  /typescript
    /katas
    /loose
```

Your task is to organise by the following rules:

- **Directories** that start with `fun` or `be` can be moved into the `javascript/sprints` directory.
- **Directories** that start with `de` can be moved into the `python/sprints` directory.
- **Files** that start with `kata-` can be moved into a `kata` directory depending on what file extension they have (`js` / `py` / `go` / `ts`).
- Any other files that aren't covered by the previous rules can be moved into a `loose` directory depending on their file extension.

---

## Extension tasks
