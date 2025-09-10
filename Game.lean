import GameServer.Commands
import Game.Levels.TutorialWorld
import Game.Levels.SemigroupWorld
import Game.Levels.MonoidWorld
import Game.Levels.InverseSemiGroupWorld
import Game.Levels.GroupWorld



-- Here's what we'll put on the title screen
Title "Abstract Algebra Game"
Introduction
"
Hi There! Welcome to the Abstract Algebra Game, you'll start off in tutorial world where
you will pick up the tactics needed to solve the exercises in further worlds.

The central idea is that we start with a very general and 'simple' structure with a Semigroup,
then as we add axioms we can prove more and more results as we gain more and more 'structure'.
"

Info "
Here you can put additional information about the game. It is accessible
from the starting through the drop-down menu.

For example: Game version, Credits, Link to Github and Zulip, etc.

Use markdown.
Version:
Credits:
Christiansen, D et al. (2025) https://lean-lang.org/doc/reference/latest/
Github:

"

/-! Information to be displayed on the servers landing page. -/
Languages "English"
CaptionShort "Game Template"
CaptionLong "You should use this game as a template for your own game and add your own levels."
-- Prerequisites "" -- add this if your game depends on other games
-- CoverImage "images/cover.png"

-- Because we don't introduce inverses that reduce to an identity in ISGW.
Dependency InverseSemiGroupWorld → GroupWorld

/-! Build the game. Show's warnings if it found a problem with your game. -/
MakeGame
