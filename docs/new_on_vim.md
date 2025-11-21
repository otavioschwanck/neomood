# New to Neovim with NeoMood - Complete Beginner's Guide

Welcome to Neovim with the NeoMood configuration! This guide will teach you everything you need to know to get started with this powerful setup.

**Before starting**: This tutorial assumes you have NeoMood installed. Open a terminal and run `nvim` to verify it works.

## Table of Contents
1. [Lesson 1: Basic Movement](#lesson-1-basic-movement)
2. [Lesson 2: Editing Text](#lesson-2-editing-text)
3. [Lesson 3: Visual Selection](#lesson-3-visual-selection)
4. [Lesson 4: Text Objects](#lesson-4-text-objects)
5. [Lesson 5: Searching and Navigation](#lesson-5-searching-and-navigation)
6. [Lesson 6: Text Surroundings (Nvim-Surround)](#lesson-6-text-surroundings-nvim-surround)
7. [Lesson 7: Basic Macros](#lesson-7-basic-macros)
8. [Lesson 8: Multiple Cursors (NeoMood Special)](#lesson-8-multiple-cursors-neomood-special)
9. [Lesson 9: Copy and Paste Operations](#lesson-9-copy-and-paste-operations)
10. [NeoMood Features](#neomood-features)
11. [Summary](#summary)

## What is NeoMood?

NeoMood is a modern Neovim configuration that makes editing faster and more intuitive. Key features:

- **Leader Key**: `<Space>` (your main command key)
- **Flash Jump**: Press `s` to jump anywhere on screen
- **Smart Features**: Auto-completion, syntax highlighting, file explorer

## Getting Started

**Important**: This tutorial teaches you to use NeoMood. The most important thing to remember is that pressing `<ESC>` will always get you out of trouble.

## Understanding Neovim's Core Principles

Neovim follows a simple but powerful grammar system that makes it incredibly efficient once you understand the pattern.

### The Neovim Grammar: [COUNT] + ACTION + MOVEMENT

Neovim commands follow this structure:
- **COUNT** (optional): How many times to repeat
- **ACTION**: What to do (delete, change, yank, etc.)
- **MOVEMENT**: Where to operate (word, line, character, etc.)

### Basic Actions
```
d - delete
c - change (delete and enter insert mode)
y - yank (copy)
v - visual select
```

### Basic Movements
```
w - word forward
b - word backward
e - end of word
$ - end of line
0 - beginning of line
j - down one line
k - up one line
```

### Examples of the Grammar in Action

**Movement with Count:**
- `3w` - move 3 words forward
- `5j` - move 5 lines down
- `2b` - move 2 words backward

**Action + Movement:**
- `dw` - delete word
- `cw` - change word
- `y$` - yank to end of line
- `d0` - delete to beginning of line

**Count + Action + Movement:**
- `3dw` - delete 3 words
- `2cw` - change 2 words
- `5dd` - delete 5 lines
- `3yy` - yank 3 lines

### Why This Grammar is Powerful

Once you learn this pattern, you can combine any count, action, and movement:
- `d3w` - delete 3 words forward
- `c2j` - change 2 lines down
- `y5k` - yank 5 lines up
- `v3e` - visually select 3 words to the end

### Special Cases

Some commands work alone:
- `dd` - delete entire line
- `yy` - yank entire line
- `cc` - change entire line
- `x` - delete character under cursor

This grammar makes Neovim incredibly expressive and efficient!

## Lesson 1: Basic Movement

### Lesson 1.1: FIRST STEPS

** You're already in NeoMood reading this tutorial! **

  1. Make sure your caps-lock key is NOT depressed.

  2. Press the <ESC> key to make sure you are in Normal mode.

  3. Move your cursor to the line below that says "Practice line:"

  4. Type: i <ENTER> to enter Insert mode.

  5. Type: Welcome to NeoMood!

  6. Press <ESC> to go back to Normal mode.

  7. Type: u <ENTER> to undo your changes.

Practice line: (try editing here)

NOTE: You are now in Normal mode. This is where most NeoMood commands work.

### Lesson 1.2: BASIC CURSOR MOVEMENT

** The cursor is moved using either the arrow keys or the hjkl keys. **

	     ^
	     k		    Hint:  The h key is at the left and moves left.
   < h   l >		   The l key is at the right and moves right.
	     j			   The j key looks like a down arrow
	     v

  1. Move the cursor around the text until you are comfortable.

  2. Hold down the down key (j) until it repeats.

  3. Now you know how to move to the next lesson.

  4. Using the down key, move to Lesson 1.3.

NOTE: If you are ever unsure about something you typed, press <ESC> to place
      you in Normal mode.  Then retype the command you wanted.

### Lesson 1.3: WORD MOVEMENT

** Press w to move to the beginning of the next word. **

  1. Move the cursor to the line below marked --->.

  2. Press w to move to the beginning of the next word.

  3. Press 3w to move three words forward.

  4. Press b to move to the beginning of the previous word.

  5. Press e to move to the end of the current word.

  6. Press 0 to move to the beginning of the line.

  7. Press $ to move to the end of the line.

---> The quick brown fox jumps over the lazy dog

NOTE: In NeoMood, you can also use - instead of $ to go to the end of line.

### Lesson 1.4: FLASH JUMP (NeoMood Special)

** Press s to jump to any character on the screen. **

  1. Move the cursor to the line below marked --->.

  2. Press s to activate flash jump.

  3. Type the letter 'o' (you should see multiple 'o' letters highlighted).

  4. Type the label letter to jump there instantly.

  5. Try s again and jump to a different word using flash jump.

---> Now try some quick brown fox jumps over the lazy dog movement
---> Use this line for more flash jump practice with different letters

NOTE: Flash jump is much faster than traditional movement for long distances!

### Lesson 1.5: FILE MOVEMENT

** Type gg to go to the first line of the file. **

  1. Press G to go to the last line of this file.

  2. Press gg to go to the first line of this file.

  3. Type 50G to go to line 50.

  4. Type 100G to go to line 100.

  5. Press G to go back to the last line.

  6. Press gg to go back to the first line.

NOTE: Line numbers are shown on the left side of the screen.

## Lesson 2: Editing Text

### Lesson 2.1: DELETION COMMANDS

** Type dw to delete a word. **

  1. Move the cursor to the line below marked --->.

  2. Move the cursor to the beginning of the word "a".

  3. Type dw to delete the word.

  4. Move the cursor to the beginning of the word "some".

  5. Type dw to delete the word.

---> There are a some words you can delete from this line.

NOTE: The line should now read: There are words you can delete from this line.

### Lesson 2.2: MORE DELETION COMMANDS

** Type dd to delete a whole line. **

  1. Move the cursor to the second line below marked --->.

  2. Type dd to delete the entire line.

  3. The line "This line needs to be deleted." should now be gone.

---> This line is okay.
---> This line needs to be deleted.
---> This line is also okay.

### Lesson 2.3: CHARACTER DELETION

** Type x to delete the character under the cursor. **

  1. Move the cursor to the line below marked --->.

  2. Move the cursor to the first 'i' in "Fiix".

  3. Type x to delete the extra 'i'.

  4. Fix the other mistakes by moving the cursor and typing x.

---> Fiix the mistakkes in this sentencce.

NOTE: The line should now read: Fix the mistakes in this sentence.

### Lesson 2.4: INSERT AND REPLACE

** Type i to insert text before the cursor. **

  1. Move the cursor to the line below marked --->.

  2. Move the cursor to the space before "word".

  3. Type i to enter Insert mode.

  4. Type: a 

  5. Press <ESC> to go back to Normal mode.

---> This line is missing word.

NOTE: The line should now read: This line is missing a word.

### Lesson 2.5: MORE WAYS TO ENTER INSERT MODE

** There are several ways to enter Insert mode. **

  1. Move the cursor to the line below marked --->.

  2. Move the cursor to the beginning of the word "text".

  3. Type I (capital i) to insert at the beginning of the line.

  4. Type: Start: 

  5. Press <ESC> to go back to Normal mode.

---> text here needs something at the beginning

  6. Move the cursor to the end of the word "end".

  7. Type A (capital a) to append at the end of the line.

  8. Type:  - Done!

  9. Press <ESC> to go back to Normal mode.

---> This line needs something at the end

  10. Move the cursor anywhere on the line below.

  11. Type o (lowercase o) to open a new line below.

  12. Type: This is a new line below.

  13. Press <ESC> to go back to Normal mode.

---> Position cursor anywhere on this line

  14. Type O (capital o) to open a new line above.

  15. Type: This is a new line above.

  16. Press <ESC> to go back to Normal mode.

NOTE: Now you know i, I, a, A, o, O - the six ways to enter Insert mode!

### Lesson 2.6: REPLACE MODE

** Type r to replace a single character. **

  1. Move the cursor to the line below marked --->.

  2. Move the cursor to the 'x' in "fxw".

  3. Type r and then i to replace x with i.

  4. Move the cursor to the 'w' in "fxw" and type r then x to replace it.

  5. Continue fixing the other errors.

---> To fxw the wromg things, tipe r and the correct character.

NOTE: The line should read: To fix the wrong things, type r and the correct character.

## Lesson 3: Visual Selection

### Lesson 3.1: VISUAL SELECTION

** Type v to start visual selection. **

  1. Move the cursor to the line below marked --->.

  2. Move the cursor to the beginning of the word "brown".

  3. Type v to start visual selection.

  4. Move the cursor to the end of the word "fox" using e.

  5. Type y to copy the selected text.

  6. Move the cursor to the end of the line.

  7. Type p to paste the copied text.

---> The quick brown fox jumps over the lazy dog.

The line should now read: The quick brown fox jumps over the lazy dog.brown fox

### Lesson 3.2: LINE SELECTION

** Type V to select entire lines. **

  1. Move the cursor to the first line below marked --->.

  2. Type V to select the entire line.

  3. Press j to extend the selection to the second line.

  4. Press j again to extend to the third line.

  5. Type d to delete the selected lines.

---> Line one needs to be deleted
---> Line two needs to be deleted
---> Line three also needs to be deleted

### Lesson 3.3: BLOCK SELECTION

** Type Ctrl+v to select rectangular blocks. **

  1. Move the cursor to the beginning of "banana" below.

  2. Type Ctrl+v to start block selection.

  3. Press j to extend down one line.

  4. Press j again to extend to the third line.

  5. Press l to extend the selection to the right.

  6. Type d to delete the selected block.

---> apple    banana    cherry
---> dog      elephant  frog
---> guitar   house     ice

NOTE: Block selection lets you select rectangular areas of text.

## Lesson 4: Text Objects

Text objects are one of Vim's most powerful features. They let you operate on "things" like words, sentences, paragraphs, and code blocks.

### Lesson 4.1: WORD TEXT OBJECTS

** Type dw to delete a word, or diw to delete inside word. **

  1. Move the cursor to the line below marked --->.

  2. Move the cursor to the beginning of the word "extra".

  3. Type dw to delete the word.

  4. Move the cursor to the word "unnecessary".

  5. Type diw to delete inside the word.

---> There are some extra unnecessary words in this sentence.

### Lesson 4.2: QUOTE TEXT OBJECTS

** Type di" to delete inside quotes. **

  1. Move the cursor to the line below marked --->.

  2. Move the cursor inside the quotes around "delete me".

  3. Type di" to delete inside the quotes.

  4. Move the cursor to the quotes around "and me too".

  5. Type da" to delete around the quotes (including quotes).

---> Keep this "delete me" and also "and me too" text.

### Lesson 4.3: BRACKET TEXT OBJECTS

** Type di( to delete inside parentheses. **

  1. Move the cursor to the line below marked --->.

  2. Move the cursor inside the parentheses.

  3. Type di( to delete inside the parentheses.

  4. Move the cursor inside the braces {}.

  5. Type da{ to delete around the braces.

---> Function(remove this content) and object{remove this too}.

NOTE: Text objects work with d (delete), c (change), y (yank), and v (visual).

## Lesson 5: Searching and Navigation

### Lesson 5.1: BASIC SEARCH

** Type / to search for text forward in the file. **

  1. Type / (forward slash) to start a forward search.

  2. Type: fox

  3. Press <ENTER> to execute the search.

  4. Press n to find the next occurrence.

  5. Press N to find the previous occurrence.

  6. Try searching for other words in this tutorial.

---> The quick brown fox jumps over the lazy dog
---> Another fox is running in the forest
---> Look for fox or dog in these practice lines
---> The fox and the dog are playing together

### Lesson 5.2: BACKWARD SEARCH

** Type ? to search backward in the file. **

  1. Type ? (question mark) to start a backward search.

  2. Type: quick

  3. Press <ENTER> to execute the search.

  4. Press n to continue searching backward.

  5. Press N to search forward from current position.

---> Search backward to find quick brown movements
---> A quick way to search is very helpful
---> Quick navigation makes editing faster

### Lesson 5.3: SEARCH WITH WORD BOUNDARIES

** Use * and # to search for the word under cursor. **

  1. Move the cursor to the word "search" below.

  2. Press * to search forward for the same word.

  3. Press # to search backward for the same word.

  4. Try this with different words in the text.

---> This search function is very useful for search operations
---> When you search, the search highlights the matches
---> Advanced search techniques help with code search

NOTE: * searches forward, # searches backward for the word under cursor.

### Lesson 5.4: CASE SENSITIVE SEARCH

** Control case sensitivity in searches. **

By default, searches are case sensitive. You can:

  1. Type /cat to find "cat" but not "Cat"
  2. Type /\ccat to ignore case (finds "cat", "Cat", "CAT")
  3. Type /\Ccat to force case sensitivity

---> The cat and the Cat are different animals
---> CAT in uppercase vs cat in lowercase
---> Case sensitive searching: cat Cat CAT

### Lesson 5.5: FIND AND TILL CHARACTER NAVIGATION

** Type f{char} to find a character, t{char} to go till (before) it. **

**Note**: In NeoMood with Flash.nvim, f and t commands are enhanced with visual feedback.

  1. Move to the line below marked --->.

  2. Type f] to find the ']' character.

  3. Press f again to find the next ']' character.

  4. Press F to find the previous ']' character (backwards).

  5. Type t( to go till (before) the '(' character.

  6. Press t again to go to the next '(' character.

---> The quick [brown] fox jumps (over) the lazy [dog] in the (forest)

### Lesson 5.6: COMBINING FIND/TILL WITH ACTIONS

** Use f and t with delete, change, and yank commands. **

  1. Move to the line below marked --->.

  2. Type df] to delete until and including the ']' character.

  3. Type dt) to delete until (but not including) the ')' character.

  4. Type cf( to change until and including the '(' character.

  5. Type ct" to change until (but not including) the '"' character.

  6. Type yf; to yank until and including the ';' character.

  7. Type yt, to yank until (but not including) the ',' character.

---> Remove [this text] and (change this) "quoted text"; keep, this part

**Common f/t usage patterns:**
- `dt]` - Delete until `]` character
- `df]` - Delete until and including `]` character
- `ct"` - Change until `"` character
- `cf"` - Change until and including `"` character
- `yt)` - Yank until `)` character
- `yf)` - Yank until and including `)` character

**Remember with Flash.nvim**: 
- `f` finds and includes the character
- `t` goes till (stops before) the character
- Press `f` again to find the next occurrence of the same character
- Press `F` to find the previous occurrence of the same character
- Press `t` again to go till the next occurrence
- Press `T` to go till the previous occurrence

## Lesson 6: Text Surroundings (Nvim-Surround)

### Lesson 6.1: CHANGING SURROUNDINGS

** Type cs followed by two characters to change surroundings. **

  1. Move to the line below marked --->.

  2. Put cursor inside the brackets around "text".

  3. Type cs]) to change `[` to `)`.

  4. Put cursor inside the quotes around "hello".

  5. Type cs"' to change `"` to `'`.

  6. Put cursor inside the single quotes around 'world'.

  7. Type cs't to change `'` to `<q>`. (html tag)

---> Change [text] and "hello" and 'world' surroundings

### Lesson 6.2: DELETING SURROUNDINGS

** Type ds followed by a character to delete surroundings. **

  1. Move to the line below marked --->.

  2. Put cursor inside the quotes around "delete these quotes".

  3. Type ds" to delete the surrounding quotes.

  4. Put cursor inside the brackets around "remove brackets".

  5. Type ds] to delete the surrounding brackets.

  6. Put cursor inside the parentheses around "remove parentheses".

  7. Type ds) to delete the surrounding parentheses.

---> Delete "delete these quotes" and [remove brackets] and (remove parentheses)

### Lesson 6.3: ADDING SURROUNDINGS TO WORDS

** Type ysiw followed by a character to surround a word. **

  1. Move to the line below marked --->.

  2. Put cursor on the word "hello".

  3. Type ysiw" to surround the word with quotes.

  4. Put cursor on the word "world".

  5. Type ysiw] to surround the word with brackets.

  6. Put cursor on the word "vim".

  7. Type ysiw[ to surround the word with brackets and spaces.

---> Surround hello and world and vim with different characters

### Lesson 6.4: ADDING SURROUNDINGS TO SELECTION

** Select text with v, then type S followed by a character. **

  1. Move to the line below marked --->.

  2. Put cursor on "quick brown".

  3. Type v to start visual selection.

  4. Move to select "quick brown fox".

  5. Type S" to surround the selection with quotes.

  6. Put cursor on "lazy dog".

  7. Type ve to select "lazy dog".

  8. Type S] to surround the selection with brackets.

---> The quick brown fox jumps over the lazy dog

### Lesson 6.5: COMMON SURROUND PATTERNS

** Practice common surround operations. **

**Change operations:**
- `cs])` - Change `[hello]` to `(hello)`
- `cs"'` - Change `"hello"` to `'hello'`
- `cs'<q>` - Change `'hello'` to `<q>hello</q>`

**Delete operations:**
- `ds"` - Change `"hello"` to `hello`
- `ds]` - Change `[hello]` to `hello`
- `dst` - Delete surrounding HTML tag

**Add operations:**
- `ysiw"` - Change `hello` to `"hello"`
- `ysiw]` - Change `hello` to `[hello]`
- `ysiw[` - Change `hello` to `[ hello ]` (with spaces)

**Visual mode:**
- Select text with `v`, then `S"` - Surround selection with quotes
- Select text with `v`, then `S]` - Surround selection with brackets

Practice text for surroundings:
---> Change "these quotes" to [brackets]
---> Delete (these parentheses) and 'these quotes'
---> Add surroundings to word and selection
---> The <tag>content</tag> can be changed with cst

**Exercise checklist:**
1. Change `"quotes"` to `'quotes'` using `cs"'`
2. Delete `[brackets]` using `ds[`
3. Add quotes to `word` using `ysiw"`
4. Select `text selection` and surround with `S]`
5. Change `<tag>` to `"quotes"` using `cst"`

## Lesson 7: Basic Macros

### Lesson 7.1: RECORDING A MACRO

** Type q followed by a letter to start recording a macro. **

  1. Move to the line below marked --->.

  2. Type qa to start recording a macro in register 'a'.

  3. Type I to insert at the beginning of the line.

  4. Type: "Hello, 

  5. Press <ESC> to go to Normal mode.

  6. Type A to append at the end of the line.

  7. Type: !"

  8. Press <ESC> to go to Normal mode.

  9. Type q to stop recording the macro.

---> world

### Lesson 7.2: PLAYING A MACRO

** Type @a to play the macro you just recorded. **

  1. Move to the first line below marked --->.

  2. Type @a to execute the macro.

  3. Move to the next line and type @a again.

  4. Move to the third line and type @a once more.

---> friend
---> user
---> everyone

NOTE: The lines should now read: "Hello, friend!", "Hello, user!", "Hello, everyone!"

### Lesson 7.3: REPEATING MACROS

** Type @@ to repeat the last macro, or 3@a to run macro 'a' three times. **

  1. Record a new macro with qb (register 'b').

  2. Type A to append at the end of line.

  3. Type:  - completed

  4. Press <ESC> and type q to stop recording.

  5. Go to a line below and type @b.

  6. Type @@ to repeat the last macro.

  7. Type 2@b to run the macro twice on other lines.

---> Task one
---> Task two  
---> Task three
---> Task four

NOTE: Macros are powerful for repetitive editing tasks!

## Lesson 8: Multiple Cursors (NeoMood Special)

Multiple cursors allow you to edit multiple locations simultaneously, making repetitive editing tasks incredibly fast.

### Lesson 8.1: BASIC MULTIPLE CURSOR SELECTION

** Use Ctrl+n to select matching words and create multiple cursors. **

  1. Move the cursor to the line below marked --->.

  2. Put your cursor on the first occurrence of the word "apple".

  3. Press Ctrl+n to select the word and create a cursor.

  4. Press Ctrl+n again to add the second "apple" to your selection.

  5. Press Ctrl+n once more to add the third "apple" to your selection.

  6. Type cw to change all three words (this puts you in insert mode).

  7. Now type "orange" to replace all three words at once.

  8. Press <ESC> to exit multiple cursor mode.

---> The apple is red, the apple is sweet, and the apple is delicious.

### Lesson 8.2: MATCH ALL OCCURRENCES

** Use <Space>n to select all matching words at once. **

  1. Move to the line below marked --->.

  2. Put your cursor on any occurrence of "banana".

  3. Press <Space>n to select ALL occurrences of "banana" at once.

  4. Type "mango" to replace all instances simultaneously.

  5. Press <ESC> to exit multiple cursor mode.

---> I like banana, banana is yellow, banana smoothie, fresh banana, ripe banana, sweet banana, banana bread, tropical banana.

### Lesson 8.3: SELECTIVE CURSOR MANAGEMENT

** Use arrow keys and <Space>x to manage multiple cursors precisely. **

  1. Move to the line below marked --->.

  2. Put your cursor on any "grape".

  3. Press <Space>n to select all "grape" occurrences.

  4. Press <right> arrow to cycle through the cursors.

  5. When you're on a cursor you want to remove, press <Space>x.

  6. Continue until you have only 2-3 cursors active.

  7. Type "berry" to replace the selected words.

  8. Press <ESC> to exit multiple cursor mode.

---> Fresh grape, purple grape, wine grape, table grape, grape juice, grape vine, grape cluster, grape harvest.

### Lesson 8.4: MULTIPLE CURSOR EDITING PATTERNS

** Practice common multiple cursor workflows. **

**Exercise 1: Adding prefixes**
1. Put cursor on "task" in the line below
2. Press Ctrl+n twice to select first three "task" words
3. Press I to enter insert mode at the beginning
4. Type "TODO: "
5. Press <ESC> to finish

---> Complete task one, finish task two, review task three, submit task four.

**Exercise 2: Wrapping with quotes**
1. Put cursor on "word" in the line below  
2. Press <Space>n to select all "word" occurrences
3. Press I to go to beginning, type " (quote)
4. Press <ESC>, then A to go to end, type " (quote)
5. Press <ESC> to finish

---> Each word should become quoted: word, word, word, word, word.

### Lesson 8.5: ADVANCED MULTIPLE CURSOR TECHNIQUES

** Combine multiple cursors with other Vim operations. **

**Vertical cursors with Ctrl+j/Ctrl+k:**

1. Move to the first line below marked --->.
2. Press Ctrl+j to add a cursor on the line below.
3. Press Ctrl+j again to add another cursor.
4. Press Ctrl+j once more for a fourth cursor.
5. Press A to go to end of all lines simultaneously.
6. Type " - DONE" on all lines at once.
7. Press <ESC> to finish.

---> Item one
---> Item two  
---> Item three
---> Item four

**Remember:**
- `Ctrl+n` - Add next matching word to selection
- `<Space>n` - Select ALL matching words at once  
- `<left>/<right>` - Navigate between active cursors
- `<Space>x` - Remove current cursor from selection
- `Ctrl+j/Ctrl+k` - Add cursors vertically above/below
- `<ESC>` - Exit multiple cursor mode

## Lesson 9: Copy and Paste Operations

### Lesson 9.1: BASIC COPY AND PASTE

** Type yy to yank (copy) a line and p to paste it. **

  1. Move the cursor to the line below marked --->.

  2. Type yy to copy the entire line.

  3. Move the cursor to the end of the block of practice lines.

  4. Type p to paste the line after the cursor.

  5. Type P (capital p) to paste the line before the cursor.

---> Copy this line and practice pasting it in different places
---> Another line for copy practice
---> Last line of the practice block

### Lesson 9.2: COPY WORDS AND CHARACTERS

** Use yw to copy words and different movements with y. **

  1. Move the cursor to the line below marked --->.

  2. Put cursor on "quick" and type yw to copy the word.

  3. Move to the end of the line and type p to paste.

  4. Put cursor on "brown" and type y2w to copy two words.

  5. Move to another position and paste with p.

  6. Put cursor on "j" in "jumps" and type y$ to copy to end of line.

  7. Go to a new position and paste.

---> The quick brown fox jumps over the lazy dog

### Lesson 9.3: VISUAL SELECTION COPY AND PASTE

** Use visual mode for precise copying. **

  1. Move to the line below marked --->.

  2. Put cursor on "programming" and type v to start visual selection.

  3. Move cursor to select "programming language" (use e to go to end of words).

  4. Type y to copy the visual selection.

  5. Move to the end of the line and type p to paste.

---> Neovim is a powerful programming language editor for developers

  6. Put cursor anywhere on the line below.

  7. Type V to select the entire line.

  8. Type y to copy the whole line.

  9. Move to the bottom and type p to paste.

---> This entire line will be copied using visual line mode

### Lesson 9.4: COPY TO SPECIFIC REGISTERS

** Use "ay to copy to register 'a' and "ap to paste from register 'a'. **

  1. Move to the first line below marked --->.

  2. Type "ayy to copy the line to register 'a'.

  3. Move to the second line.

  4. Type "byy to copy the line to register 'b'.

  5. Move to the third line.

  6. Type "cyy to copy the line to register 'c'.

  7. Now paste them in reverse order: type "cp, then "bp, then "ap.

---> First line goes to register a
---> Second line goes to register b  
---> Third line goes to register c

### Lesson 9.5: COPY AND PASTE WITH TEXT OBJECTS

** Combine copy with text objects for efficient copying. **

  1. Move to the line below marked --->.

  2. Put cursor inside the quotes around "copy this text".

  3. Type yi" to copy inside the quotes.

  4. Move to the end of the line and type p to paste.

  5. Put cursor inside the parentheses around "and this too".

  6. Type ya( to copy around the parentheses (including parentheses).

  7. Move to a new position and paste with p.

---> The message says "copy this text" and also (and this too) for practice

  8. Put cursor on the word "function" below.

  9. Type yiw to copy the inner word.

  10. Move to the end and paste with p.

  11. Put cursor on "complete" and type yaw to copy around the word (includes spaces).

  12. Paste with p in a new position.

---> This function should complete the copy practice exercises

### Lesson 9.6: COPY TO SYSTEM CLIPBOARD

** Use "+ to access system clipboard. **

  1. Move to the line below marked --->.

  2. Type "+yy to copy the line to system clipboard.

  3. You can now paste this line in any other application (outside Neovim).

  4. Type "+p to paste from system clipboard.

---> This text will be copied to your system clipboard

### Lesson 9.7: COPY AND PASTE PRACTICE

** Practice different copy and paste combinations. **

Practice text for copy and paste exercises:

---> Line 1: Quick brown fox jumps over lazy dog
---> Line 2: The "quoted text" and (parenthesized text) need copying  
---> Line 3: function_name variable_name method_call()
---> Line 4: Copy this {entire block} and [these brackets] too
---> Line 5: Final practice line with words to copy

**Exercise checklist:**
1. Copy Line 1 with yy and paste it after Line 5
2. Copy just "quoted text" (including quotes) from Line 2 
3. Copy the word "function_name" from Line 3
4. Copy from "Copy" to "brackets" in Line 4 using visual selection
5. Copy Line 5 to register 'x' using "xyy
6. Copy any line to system clipboard using "+yy
7. Paste from register 'x' using "xp
8. Copy two words at once using y2w
9. Copy to end of line using y$
10. Copy entire paragraph using visual line mode (V)

NOTE: Remember - y copies, p pastes after cursor, P pastes before cursor!

## Working with Indentation

### The Power of `vij`

`vij` is a magical command that selects all lines at the same indentation level:

```
vi{  - Select inside braces
vij  - Select same indentation level
vaI  - Select around indentation (with blank lines)
```

### Indentation Practice

**Using the function block in your practice text:**

1. **Select indentation block**: Put cursor on `line1_here` and press `vij`
2. **Select with braces**: Put cursor inside the `if (condition)` block and press `vi{`
3. **Move selection**: In visual mode, press `J` to move lines down, `K` to move up
4. **Indent selection**: Select lines with `V`, then press `>` to indent, `<` to outdent

**Try these specific exercises:**
- Put cursor on `line1_here` and press `vij` to select the indented block
- Put cursor inside `{` after `if (condition)` and press `vi{` to select everything inside braces
- Select the three lines with `line1_here`, `line2_here`, `line3_here` and press `>` to indent them more
- Select the same lines and press `<` to outdent them

**Pro tip**: After selecting with `vij`, you can:
- Press `>` to indent the whole block
- Press `<` to outdent the whole block
- Press `J` to move the whole block down
- Press `K` to move the whole block up

## Editing Text

### Entering Insert Mode
```
i - Insert before cursor
I - Insert at beginning of line
a - Insert after cursor
A - Insert at end of line
o - New line below
O - New line above
```

### Deleting Text
```
x - Delete character (no yank)
dd - Delete line
dw - Delete word
d$ - Delete to end of line
```

### Changing Text
```
cw - Change word
cc - Change line
c$ - Change to end of line
r  - Replace single character
```

### Editing Practice

**Fix the mistakes in your practice text:**

1. **Fix spelling errors**:
   - Put cursor on "textt" (line 1) and press `x` to delete extra 't'
   - Put cursor on "quikc" (line 2) and press `cw` then type "quick"
   - Put cursor on "hass" (line 3) and press `x` to delete extra 's'  
   - Put cursor on "mispelled" (line 4) and press `cw` then type "misspelled"

2. **Insert variations**:
   - Put cursor at end of line 1 and press `A` to append text
   - Put cursor anywhere on line 2 and press `o` to create new line below
   - Put cursor anywhere on line 3 and press `O` to create new line above

3. **Delete variations**:
   - Put cursor on any character and press `x` to delete it
   - Put cursor on line 7 and press `dd` to delete entire line
   - Put cursor on "mistakes" and press `dw` to delete word

4. **Copy and paste**:
   - Put cursor on "This is line one" and press `yy` to copy line
   - Move to end of file and press `p` to paste after cursor
   - Put cursor on "practice" and press `yw` to copy word
   - Move somewhere else and press `p` to paste word

5. **Undo/Redo**:
   - Press `u` to undo your last change
   - Press `Ctrl+r` to redo

**Remember**: Always press `Esc` to return to Normal mode before trying new commands!

## NeoMood Enhanced Features

### Custom NeoMood Shortcuts

NeoMood changes some default behaviors to be more efficient:

```
\           - Save all files (instead of :w)
-           - Jump to end of line (instead of $)
,           - Switch between windows
<Space>     - Leader key (main command key)
```

### File Operations
```
\           - Save all files
<Space>qq   - Quit all
<Space>k    - Delete current buffer
```

### Buffer Management
```
<Ctrl+e>    - Switch to alternate buffer
ge          - Switch to alternate buffer  
<Space>,    - Show all buffers (FZF)
```

### Window Management
```
,           - Switch between windows
<Space>wq   - Close window
<Space>wh/j/k/l - Move to specific window
```

### NeoMood Practice

**Try these NeoMood features:**

1. **Saving**: Make some changes and press `\` (saves all files)
2. **Line end**: Press `-` to jump to end of line
3. **Window switching**: Press `,` to switch between windows
4. **Buffer list**: Press `<Space>,` to see all open buffers
5. **Alternate buffer**: Press `Ctrl+e` to switch to last buffer

**Create multiple files to practice:**
- Save your current work with `\`
- Press `<Space>qq` to quit
- Open multiple files: `nvim file1.txt file2.txt file3.txt`
- Use `<Space>,` to switch between them
- Use `<Space>k` to close current buffer

## File Management

### File Explorer (Neo-tree)
```
<Space>e   - Toggle file explorer
<Space>E   - Show current file in explorer
```

### FZF Explorer (Modern File Management)
```
<Space>.   - FZF file explorer
<Space>fC  - Copy file
<Space>fM  - Move file
<Space>fR  - Rename file
<Space>fd  - Delete file
```

### Quick File Access
```
<Space>fp  - Open dotfiles (.zshrc, .tmux.conf, etc.)
<Space>fy  - Copy relative path
<Space>fY  - Copy full path
```

### File Management Practice

**Try these file operations:**

1. **File Explorer**: Press `<Space>e` to open file tree
   - Navigate with `j/k` (up/down)
   - Press `Enter` to open files
   - Press `<Space>e` again to close

2. **FZF Explorer**: Press `<Space>.` for modern file browser
   - Type to search for files
   - Press `Enter` to open
   - Much faster than traditional file browsers

3. **File Operations**: 
   - Press `<Space>fR` to rename current file
   - Press `<Space>fC` to copy file
   - Press `<Space>fd` to delete file

4. **Path Operations**:
   - Press `<Space>fy` to copy relative path to clipboard
   - Press `<Space>fY` to copy full path to clipboard

**Pro tip**: The FZF explorer (`<Space>.`) is usually faster than the file tree for finding files quickly.

## Search and Navigation

### FZF-Lua (Fuzzy Finding)
```
<Space><Space> - Find files
<Space>sp      - Live grep (search in files)
<Space>sr      - Recent files
<Space>sw      - Search word under cursor
<Space>ss      - Search in current buffer
<Space>so      - Search in all open buffers
```

### Traditional Search
```
/pattern    - Search forward
?pattern    - Search backward
n/N         - Next/previous result
```

### Search and Navigation Practice

**File Finding:**
1. Press `<Space><Space>` to find files
   - Type part of filename (fuzzy matching works!)
   - Press `Enter` to open
   - Press `<Space>sr` for recent files

**Content Search:**
1. Press `<Space>sp` to search text in all files
   - Type your search term
   - See live results as you type
   - Press `Enter` to jump to result

**Buffer Search:**
1. Press `<Space>ss` to search in current file only
2. Press `<Space>so` to search in all open buffers

**Word Search:**
1. Put cursor on any word
2. Press `<Space>sw` to search for that word everywhere

**Traditional Search:**
1. Press `/` and type search term
2. Press `n` for next result, `N` for previous
3. Press `?` to search backwards

**Pro tip**: FZF search (`<Space>sp`) is usually better than traditional search (`/`) for finding things across multiple files.

## Code Development

### Advanced Features (When You're Ready)

**LSP (Language Server Protocol):**
```
K           - Show documentation
gd          - Go to definition
gr          - Go to references
<Space>ca   - Code actions
<Space>hr   - Restart LSP
```

**Diagnostics:**
```
]d/[d       - Next/previous diagnostic
gl          - Show line diagnostics
```

**Code Completion:**
- Press `Tab` to accept completions
- `Ctrl+j` - Accept AI suggestions (Codeium)
- `Ctrl+f` - Accept next word
- `Ctrl+b` - Cycle completions

**Git Integration:**
```
<Space><Tab> - Git status
]g/[g        - Next/previous git hunk
<Space>gs    - Stage hunk
<Space>gr    - Reset hunk
<Space>gp    - Preview hunk
<Space>gb    - Blame line
```

**Ruby Development (if applicable):**
```
<Space>rm  - Find model
<Space>rc  - Find controller
<Space>rv  - Find view
<Space>=   - Rubocop auto-fix
<Space>d   - Add binding.pry
<Space>a   - Go to test file
```

## Essential Shortcuts Summary

### Daily Essentials
```
<Space>     - Leader key (your main command key)
\           - Save all files
<Space>qq   - Quit all
<Space>e    - File explorer
<Space><Space> - Find files
<Space>sp   - Search in files
<Space>k    - Close buffer
```

### Movement
```
h j k l     - Basic movement
s           - Flash jump
w b e       - Word movement
gg G        - First/last line
-           - End of line
```

### Editing
```
i a o       - Insert modes
x dd        - Delete
yy          - Copy line
p           - Paste
u           - Undo
Ctrl+r      - Redo
```

### Visual Mode
```
v V         - Select text
J K         - Move lines up/down
< >         - Indent/outdent
```

### Daily Workflow

**Opening and exploring:**
1. Open: `nvim` or `nvim filename`
2. Explore: `<Space>e` for file tree or `<Space><Space>` for fuzzy find
3. Navigate: Use `s` for flash jump, `hjkl` for movement

**Editing:**
1. Edit: `i` to insert, `Esc` to normal mode
2. Select: `v` for character, `V` for line, `vij` for indentation
3. Copy/Paste: `yy` to copy, `p` to paste
4. Save: `\` to save all files

**Advanced:**
1. Search: `<Space>sp` to search across files
2. Git: `<Space><Tab>` for git status
3. Close: `<Space>k` to close buffer, `<Space>qq` to quit

## Quick Tips

✅ **Do:**
- Use `hjkl` instead of arrow keys
- Master flash jump (`s`) - it's a game changer
- Use `<Space>` for most advanced features
- Practice `vij` for indentation selection
- Use `<Space>sp` for searching across files

❌ **Don't:**
- Stay in Insert mode for navigation
- Ignore the leader key (`<Space>`)
- Use arrow keys or mouse
- Fight the configuration - trust NeoMood

## Final Words

NeoMood transforms Neovim into a modern, efficient development environment. The key is **gradual learning**:

1. **Start simple**: Master modes and basic movement
2. **Build muscle memory**: Practice the fundamentals daily
3. **Add complexity**: Gradually learn advanced features
4. **Stay consistent**: 15 minutes daily beats 2 hours weekly

Remember: Vim has a steep learning curve, but once you climb it, you'll never want to go back!

---

*Happy coding with NeoMood! 🚀*

*For more advanced features, check out the [full mappings documentation](mappings.md)*
