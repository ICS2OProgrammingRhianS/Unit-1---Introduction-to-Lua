-----------------------------------------------------------------------------------------
-- Title: TouchAndDrag
-- Name: Rhian
-- Course:ICS20
-- This program displays images that react to a person's finger

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local Variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local Girl2 = display.newImageRect("Images/Girl2.png", 150, 150)
local Girl2Width = Girl2.width
local Girl2Height = Girl2.height

local  Girl3 = display.newImageRect("Images/Girl3.png", 150, 150)
local Girl3Width = Girl3.width
local Girl3Height = Girl3.height


-- myboolean varibles to keep trak of which object I touched first
local alreadyTouchedGirl2 = false
local alreadyTouchedGirl3 = false

-- set the initial x and y position of myImage
Girl2.x = 400
Girl2.y = 500

Girl3.x = 300
Girl3.y = 200

-- Functions: Girl3Listener
-- Input: touch listener
-- Output: none
-- Description: when girl3 is touched, move her
local function Girl3Listener(touch) 

	if (touch.phase == "began") then
		if(alreadyTouchedGirl2 == false) then
			alreadyTouchedGirl3 = true
		end
	end

	if ((touch.phase == "moved") and (alreadyTouchedGirl3 == true)) then
		Girl3.x = touch.x
		Girl3.y = touch.y
	end
	
	if (touch.phase == "ended") then
	   alreadyTouchedGirl3 = false
	   alreadyTouchedGirl2 = false
    end
end

-- add the respective listeners to each object
Girl3:addEventListener("touch", Girl3Listener)    

local function Girl2Listener(touch) 

	if (touch.phase == "began") then
		if(alreadyTouchedGirl3 == false) then
			alreadyTouchedGirl2 = true
		end
	end

	if ((touch.phase == "moved") and (alreadyTouchedGirl2 == true)) then
		Girl2.x = touch.x
		Girl2.y = touch.y
	end
	
	if (touch.phase == "ended") then
	   alreadyTouchedGirl2 = false
	   alreadyTouchedGirl3 = false
    end
end

-- add the respective listeners to each object
Girl2:addEventListener("touch", Girl2Listener)    

-----------------------------------------------------------------------------------------

-- Your code here