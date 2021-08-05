README.md

# elm-robots

## What it is

My attempt at building something a bit like Tom Poindexter's 1985 classic shareware game [CROBOTS](https://github.com/tpoindex/crobots). The fuzzy concept I have now is something like:

- A multiplayer game where players create a robot in Elm that then competes against other robots.

- Robot code is uploaded to the game server where it can compete with others, perhaps in a [ladder-like](https://en.wikipedia.org/wiki/Ladder_tournament) format.

- The robots themselves might look a lot like the Elm architecture's `update` function. The function will get called periodically by the game engine, passing in some state and a `Msg` that describes what has caused the update. The function can then respond with some updated state and a `Cmd` of what it would like do to. Something like that.

- Robots will have access to some basic robot-like hardware, such as drives, scanners and rocket launchers, and will have a set of things that can do (scan, fire a missle, turn, move forward, etc.)

There's a lot more that could be done (more robot capabilities, upgradable robots, more granular damage, more interesting maps and environments), but I don't yet know how much appetite I have for this. I have no grand ambition just now other than standing up a basic, yet hopefully fun, version of the game.

## What it is not

This is not port or replication of CROBOTS. I won't be attempting to reconstruct the virtual machine Poindexter created, nor will existing C robots (.r) files be compatible. There are a few reasons for this:

- Trying to create a virtual machine sounds tricky, especially in a functional language. It's an interesting challenge, but not what I want to do just now.

- By targeting (a subset of) the C language, CROBOTS requires robot code to be imperative. Elm is a functional language, so lets make functional robots!

- Poindexter describes CROBOTS as a game for "aspiring programmers", a way for them to learn C programming and to have fun doing it. What if this could do that for Elm?

## Why I'm doing it

This is another learning exercise for me in Elm and functional programming. In particular, I want to learn some things about:

- Game development. I've never made a game before, and whilst Elm isn't exactly the most traditional (and almost certainly not the best) platform for it, I'm just dipping my toe in for now. I think there will be concepts I learn here that will translate well to other platforms if I want to take it further.

- Elm. Doing more stuff in Elm, getting more used to the syntax, data modelling with custom types, and UI stuff. Figuring out the backend piece and supporting multiple players will be very interesting I hope!

- [Lamdera](https://lamdera.com/). This is a relatively new service that allows for apps to be written entirely in Elm (front and backend), and eliminates much of the glue code between different parts of the system that is usually necessary when creating a webapp. As with gamedev, these are subjects that I would like to know more about someday, but I like the idea of sticking with Elm as much as possible just now.

Copyright (c) 2021 Stewart Murrie <stewart@murrie.org>
