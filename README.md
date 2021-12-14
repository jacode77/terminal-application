# Chatterbox Game App

A simple command line app that simulates the Chatterbox game. It takes a users selection after displaying 4 choices, will run through a similar step 2 additional times. The third taking of user input will display the fortune to the user.

A link to the app can be located here.

### Purpose and scope of the your application

#### What does the application do

Chatterbox is a terminal game that is inspired from the original game, played by school kids before the computer age set in. Originally played as an origami style game, it has been restored to stir up former memories from school days. Adding a little humour to the users day.

In the game, the user will be provided a choice to play the standard game, the Christmas edition, read further to understand what is Chatterbox or to exit. To play the standard game the user will be prompted to select one of four colours. Since the simulation of the pinching and pulling of origami paper cannot be implemented in the terminal, each letter of the colour will be printed.

A choice of 4 numbers will be given to the user. These numbers are based on the number of letters in the colour. The user will then select a number which will be counted from 1 to the number selected. A choice of 4 numbers will be given to the user, which will alternate dependent on the number previously selected. The user will again be prompted to pick a number, however this time will be presented with a fortune.

The Christmas edition will run through a similar process, however will be Christmas themed. The user will first be prompted to select a Christmas character, whereby the character letters will be counted through. The same process of selecting numbers will be prompted to the user, with the last option providing the user with a Christmas joke.

#### What problem will it solve

As the app is a game, it aims to entertain the user. Bringing a bit of enjoyment and maybe a laugh. As it is a game it is not designed to solve any problems. The game has been developed primarily to help develop the creators skills with Ruby by practically applying the material covered. The chatterbox game was selected from a wave of memories from former days at school. I was unable to make the origami and aim to make a terminal app version instead.

#### Target audience

As the game is a terminal app, the target audience would most likely be a developer who is looking for a break between coding. Alternatively, it could also be a source of inspiration for a new developer looking to see what you can build with a terminal app as well as some features to make it more user friendly and interactive. Children could also enjoy the game, however would need assistance to access and use the terminal.

#### Explain how a member of the target audience will use it

After opening the file and installing the relevant gems, the user would follow the prompts to play by either selecting the standard game or the Christmas edition. The game is interactive throughout and immediately starts by asking the user for their selection. At the end of the game the game will loop back to the main menu to allow the user to play again or quit.

The app takes user input through the use of a menu and confirms this as output throughout.

### Features

The game includes the following features:

- **Welcome Menu** - The welcome menu assists in simplifying the way the user makes a choice and aims to be interactive with the user. The menu itself has been created through the use of the _TTY-prompt_ gem. It is a select menu that allows the user to make a choice at the beginning, which reduces the amount of text, particularly if the user just wants to play the game.

- **User Input & Output** - Throughout the game the user is prompted for input through the use of the multi-select menu option, also using _TTY-prompt_. This feature is different to the welcome menu in that each selection is each linked to the code. The user choice is confirmed by displaying the output and continues the game based on their input.

- **Use of Colours** - A standard terminal will normally display text in white colour. As the game cannot simulate the actions of the actual game, in order to be more engaging, the _Colorize_ gem has been implemented as a feature to display the user colour choice. For example, if the user selects _Magenta_ as their colour choice, the output is confirmed as the colour selected and spelt out in this same colour.

- **ASCII Images** - As the terminal is reasonably limited in how it displays things visually, and in order to help make the game more engaging and interesting, the use of ASCII Images has been implemented as a form of graphical content. While there are a few ways to display graphical content in the terminal, the use of ASCII art is fitting as it is also reasonably old school.

### App Diagram

The following diagram shows the workflow of the app

### Implementation Plan

### Help Documentation
