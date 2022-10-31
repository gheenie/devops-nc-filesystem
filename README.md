# NC Filesystem

We've all been in that situation where we don't know how best to organise our files. It's so easy to just save files all over the place and often with unhelpful names.

Such a fate has befallen the Northcoders central file system and it's your job to give it a good spring clean!

**If you need to reset the Northcoders filesystem at any time just run the** `./reset-filesystem` **script**

---

## **Section 1 - Checks and Reports**

Before we can start organising the Northcoders files there are some things we need to check.

It would also be helpful to create some reports about the filesystem for future use.

### **Task 1**

Within the `stuff` directory there are a number of staff files. Your task is to create a script that checks if files for given staff members are present in the directory.

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

### **Task 2**

Cats

---

## Extension tasks
