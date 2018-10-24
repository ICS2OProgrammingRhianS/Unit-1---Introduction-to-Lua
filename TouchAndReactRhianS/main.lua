-----------------------------------------------------------------------------------------
-- Title: TouchAndReact
-- Name: Rhian
-- Course: ICS2O
-- This program changes the button when you click the button.

-- Set sound
local correctSound = audio.loadSound( "Sounds/spring.mp3" )
local correctSoundChannel

--set background colour
display.setDefault ("background", 15/255, 104/255, 2/255)

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- creat blue button, set its position and make it visible
local  BlueButton = display.newImageRect("Images/BlueButton.png",198, 96)
BlueButton.x = display.contentWidth/2
BlueButton.y = display.contentHeight/2
BlueButton.isVisible = true

-- creat red button, set its position and make it visible
local  RedButton = display.newImageRect("Images/RedButton.png",198, 96)
RedButton.x = display.contentWidth/2
RedButton.y = display.contentHeight/2
RedButton.isVisible = false

-- creat checkmark, set its position and make it visible
local checkmark = display.newImageRect("Images/checkmark.png",108, 96)
checkmark.x = display.contentWidth/2
checkmark.y = display.contentHeight/2
checkmark.isVisible = true

-- create text object, set its position and make it invisible
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor(1, 1, 0)
textObject.isVisible = false

-- Function: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: when blue button is clicked, it will make the text appear with the red button, 
-- and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		BlueButton.isVisible = false
		RedButton.isVisible = true
		checkmark.isVisible = true
		textObject.isVisible = true
	end
	
	if (touch.phase == "ended")	then
	    BlueButton.isVisible = true
	    RedButton.isVisible = false
	    checkmark.isVisible = false
	    textObject.isVisible = false
	end    
end
local function RedButtonListener(touch)
	if (touch.phase == "began") then
		RedButton.isVisible = false
		BlueButton.isVisible = true
		checkmark.isVisible = true
		textObject.isVisible = true
	end
	if (touch.phase == "ended")	then
	    RedButton.isVisible = true
	    BlueButton.isVisible = false
	    checkmark.isVisible = false
	    textObject.isVisible = false
	end    
end

local function checkmarkListener(touch)
	if (touch.phase == "began") then
		checkmark.isVisible = false
		BlueButton.isVisible = true
		RedButton.isVisible = true
	    textObject.isVisible = true
	end
	
	if (touch.phase == "ended")	then
	    checkmark.isVisible = true
	    RedButton.isVisible = false
	    BlueButton.isVisible = false
	    textObject.isVisible = false
	end    
end
-- add the respective listeners to each object
BlueButton:addEventListener("touch", BlueButtonListener)

RedButton:addEventListener("touch", RedButtonListener)

checkmark:addEventListener("touch", checkmarkListener)

-- play the sound
correctSoundChannel = audio.play(correctSound)




-----------------------------------------------------------------------------------------

