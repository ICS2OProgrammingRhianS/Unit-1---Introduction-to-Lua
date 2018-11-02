-----------------------------------------------------------------------------------------
---- Title: PhysicsAndCollisions
-- Name: Rhian smith
-- Course: ICS2O
-- This program.


-----------------------------------------------------------------------------------------

-- hide statusBar
display.setStatusBar(display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start physics
physics.start()
-----------------------------------------------------------------------------------------
--Objects
-----------------------------------------------------------------------------------------
--Ground
local ground = display.newImage("Images/ground.png", 0, 740)
ground.x = display.contentWidth/2

-- change the width to be the same as the screen
ground.width = display.contentWidth

-- add the physics
physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

-----------------------------------------------------------------------------------------
-- display beam
local beam = display.newImage("Images/beam_long.png", 0, 0)

-- set the x and y pos
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65

-- set the width and height
beam.width = display.contentWidth/15

beam.height = display.contentHeight/1

-- rotate the beam -60 degrees so its on angle
beam:rotate(-45)

-- send it to the back layer
beam:toBack()

--add to physics
physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

-- display beam 2
local beam2 = display.newImage("Images/beam_long.png", 0, 0)

-- set the x and y pos
beam2.x = display.contentWidth * 0.9
beam2.y = display.contentHeight * 0.9

-- set the width and height
beam2.width = display.contentWidth/15

beam2.height = display.contentHeight/1

-- send it to the back layer
beam2:toBack()

--add to physics
physics.addBody(beam2, "static", {friction=0.5, bounce=0.3})



-- create bkg
local bkg = display.newImage("Images/bkg.png", 0, 0)

-- set the x and y pos
bkg.x = display.contentCenterX
bkg.y = display.contentCenterY

-- set the width and height
bkg.width = display.contentWidth/1

bkg.height = display.contentHeight/1

-- send to back
bkg:toBack()

-----------------------------------------------------------------------------------------
-- FUNCTION
-----------------------------------------------------------------------------------------

-- create the first ball
local function firstBall()
	-- create first ball
	local ball1 = display.newImage("Images/ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end

-----------------------------------------------------------------------------------------
local function secondball()
	-- create second ball
	local ball2  = display.newImage("Images/ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius=12.5})

	ball2:scale(0.5, 0.5)
end


-----------------------------------------------------------------------------------------
local function thirdball()
	-- create second ball
	local ball3  = display.newImage("Images/ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball3, {density=1.0, friction=0.5, bounce=0.3, radius=17.5})

	ball3:scale(0.7, 0.7)
end

-----------------------------------------------------------------------------------------
local function fourthball()
	-- create second ball
	local ball4  = display.newImage("Images/ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball4, {density=1.0, friction=0.5, bounce=0.3, radius=40})

	ball4:scale(1.7, 1.7)
end

-----------------------------------------------------------------------------------------
local function fifthball()
	-- create second ball
	local ball5  = display.newImage("Images/ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball5, {density=1.0, friction=0.5, bounce=0.3, radius=40})

	ball5:scale(1.7, 1.7)
end

-----------------------------------------------------------------------------------------
-- TIMER DELAYS - call each function after the given millisecond
-----------------------------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondball)
timer.performWithDelay( 700, thirdball)
timer.performWithDelay( 800, fourthball)
timer.performWithDelay( 900, fifthball)


