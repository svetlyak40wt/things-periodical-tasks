Things Periodical Tasks
=======================

This script adds a new item to the [Things][] task manager.
It was inspired by "[GTD for hackers][GTD]" document.

Usage
-----

    ./add-things-item.scpt "The title" "Name of the List" "optional, tags"

You can use any focus, project or area name, as the name of the list. Tags are optional.

Here is an example:

    ./add-things-item.scpt "Write a post to the blog" Today "home, urgent"

How to make them periodical?
----------------------------

Run `crontab -e` and add to the opened file lines like that:

    # Periodical TODOs
    # ----------------
    0 9 * * mon-fri $HOME/git/things-periodical-tasks/add-things-item.scpt "Write a blog post at dev.svetlyak.ru" Today daily-checklist
    0 11 * * sat $HOME/git/things-periodical-tasks/add-things-item.scpt "Have a walk and take some photos" Today weekend-checklist

To find more information about crontab's syntax, run `man 5 crontab`.


What is next?
-------------

* Fork and contribute;
* Find more scripts for Things at the Cultured Code's [wiki][more-scripts].

[Things]: http://culturedcode.com/things/
[GTD]: http://gtdfh.branchable.com/
[more-scripts]: https://culturedcode.com/things/wiki/index.php/User_Contributed_Scripts
