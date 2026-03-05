import GameServer.Commands
import Game.Levels.TutorialWorld
import Game.Levels.SemigroupWorld
import Game.Levels.MonoidWorld
import Game.Levels.InverseSemiGroupWorld
import Game.Levels.GroupWorld


Game "MyGame"
-- Here's what we'll put on the title screen
Title "The Abstract Algebra Game"
Introduction
"
Welcome to **The Abstract Algebra Game**!

This is a game about proving basic propositions in different algebraic structures. Its primary aim is to get students who are unfamiliar with this type of mathematics comfortable in using the basic techniques of the subject.

The game also provides a gentle introduction to the world of mathematical formalisation and, in particular, the interactive proof assistant Lean.

Lean is a programming language and in order to play the game, we will need to learn some of its basic syntax. This syntax is introduced in **Tuotrial World**, so let's start there by clicking on the title of the world.
"

Info "
*Game version: 0.1*

*Recent additions: bug fixes*

## Progress saving

The game stores your progress in your local browser storage.
If you delete it, your progress will be lost!

Warning: In most browsers, deleting cookies will also clear the local storage
(or \"local site data\"). Make sure to download your game progress first!

## Credits

* **Creators:** Peter Davidson, Alexander Brown, Adam Kennedy
* **Game Engine:** Alexander Bentkamp, Jon Eugster, Patrick Massot

## Problems?

If you experience issues / bugs, please open github issues:

* For issues with the game engine, please open an
[issue at the lean4game](https://github.com/leanprover-community/lean4game/issues) repo.
* For issues about the game's content, please open an
[issue at the Abstract Algebra Game](https://github.com/PeterQJD/AbstractAlgebraGame/issues) repo.
"

/-! Information to be displayed on the servers landing page. -/
Languages "en"
CaptionShort "A game for students new to abstract algebra."
CaptionLong "In this game you will prove basic propositions in different algebraic structures. You will also learn a little bit about the interactice proof assistant Lean."
-- Prerequisites "" -- add this if your game depends on other games
-- CoverImage "images/cover.png"

-- Because we don't introduce inverses that reduce to an identity in ISGW.
Dependency InverseSemiGroupWorld → GroupWorld

/-! Build the game. Show's warnings if it found a problem with your game. -/
MakeGame
