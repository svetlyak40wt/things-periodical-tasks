#!/usr/bin/env osascript
#########################################################################################
# This script adds a new item to the Things task manager.
# Usage: ./add-things-item.scpt "The title" "Name of the List" "optional, tags"
# Example: ./add-things-item.scpt "Write a post to the blog" Today "home, urgent"
#
# Author: Alexander Artemenko <svetlyak.40wt@gmail.com>
# Source: http://github.com/svetlyak40wt/things-periodical-tasks

on run argv
    tell application "Things"
        set title to item 1 of argv
        set list_name to item 2 of argv

        set new_todo to make new to do with properties {name: title} at beginning of list list_name

        if length of argv > 2 then
            set tag names of new_todo to item 3 of argv
        end if
    end tell
end run
