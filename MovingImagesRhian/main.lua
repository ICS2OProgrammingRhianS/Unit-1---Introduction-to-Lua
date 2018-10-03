-----------------------------------------------------------------------------------------
-- Title: MovingImages
-- Name: Rhian Smith
-- Course: ICS2O
-- This program moves beetship across the screen and it grow, fade, go left, go right.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables 
scrollSpeed = 3

-- background images with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- set image to be transparent
beetleship.alpha = 1

-- set the intial x and y postition of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: MoveShip
-- Input: this function accepts an event listener 
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event) 
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparency of the ship every time moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

-- global variables 
scrollSpeed = 3


-- character image with width and height
local girl1 = display.newImageRect("Images/girl1.png", 200, 200)

-- set image to be transparent
girl1.alpha = 1

-- set the intial x and y postition of beetleship
girl1.x = display.contentWidth
girl1.y = display.contentHeight*2/3

-- Function: MoveShip
-- Input: this function accepts an event listener 
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveGirl(event) 
	-- add the scroll speed to the x-value of the ship
	girl1.x = girl1.x - scrollSpeed
	-- change the transparency of the ship every time moves so that it fades out
	girl1.alpha = girl1.alpha - 0.00001
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveGirl)

-----------------------------------------------------------------------------------------

-- Your code here