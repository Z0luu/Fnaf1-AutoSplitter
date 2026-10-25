# Five Nights at Freddy's Auto Splitter for LiveSplit (PC)

An auto splitter and load remover for **Five Nights at Freddy's**, written as a LiveSplit script (`.asl`).

## Features

- **Load removal** – pauses the Game Time during loading screens.
- **Auto splits** – splits at the end of each nights

## Requirements

- Windows and [**LiveSplit**](https://livesplit.org/downloads/).
- **Five Nights at Freddy's**.

## Installation

1. Download fnaf1.asl and place it somewhere you can remember.
2. In LiveSplit, right click → **Edit Layout…** → **+** → **Control** → **Scriptable Auto Splitter**.
3. Enter the script's path or click **Browse…** and choose `fnaf1.asl`.

## How splitting works

The script reads the current area from the game's memory.
 - Nights 1 to 4 : split if the area goes from 6 to 2.
 - Night 5 : from 6 to 9
 - Night 6 : from 6 to 11
 - Night 7 : from 6 to 13

|area|description|
|---|---|
|-1|loading screen|
|1|main menu|
|2|beginning of a night|
|3|during a night|
|6|6am screen|
|9|1st star screen (end of 5th night)|
|10|new game screen|
|11|2nd star screen(end of 6th night)|
|13|3rd star screen(end of 7th night)|