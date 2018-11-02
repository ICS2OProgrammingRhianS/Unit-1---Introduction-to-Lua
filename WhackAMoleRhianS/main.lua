-----------------------------------------------------------------------------------------
---- Title: WhackAMole
-- Name: Rhian
-- Course: ICS2O
-- This program...
-----------------------------------------------------------------------------------------
-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)
-------------------------------------
-- set the background colour
display.setDefault("background", 0/255, 0/255, 2/255)

-- creating background
local bkg = display.newRect( 0, 0, display.contentWidth, display.contentHeight )


local score = 0
local scoreTextObject = display.newText( "Score" .. score , display.contentWidth/1.2, display.contentHeight/3, nil, 60 )
scoreTextObject:setTextColor(3/255, 5/255, 0/255)
----------------------------------------------------

-- setting the position
bkg.anchorX = 0
bkg.anchorY = 0
bkg.x = 0
bkg.y = 0

-- create mole
local mole = display.newImage( "Images/mole.png", 0, 0 )

-- setting Position
mole.x = display.contentCenterX
mole.y = display.contentCenterY

-- moles scale
	mole:scale(0.7, 0.7)

	--make mole invisible
	mole.isVisible = false

	

-----------------------------------functions------------------------------------------

-- This fuction that makes the mole appear in a random (x,y) position on the screen
--before calling the Hide function
function PopUp( )
	
	-- Choosing Random Position on the screen between 0 and the size of the screen
	mole.x = math.random( 0, display.contentWidth )
	mole.y = math.random( 0, display.contentHeight )

	--make mole visible
	mole.isVisible = true
	timer.performWithDelay( 500, Hide )
end

-- this function calls the popup function after 3 seconds
function PopUpDelay( )
	timer.performWithDelay( 1000, PopUp )
	
end

-- this function makes the mole invisible and the calls the popudelay function
function Hide( )

	--Changing visibility
	mole.isVisible = true
	PopUpDelay( )
end

-- this function starts the game
function GameStart( )
	PopUpDelay( )
end



-- this function increments the score only if the mole is clicked it then displays the new score
function Whacked( event )

	-- if touch phrase just started
	if (event.phase == "began") then
		score = score + 1
		print(score)
		scoreTextObject.text = "Score=".. score
    	 
    end
end

-----------------------------------------------------------------------------------------
-- i add the event listener to the mole so that if the mole is touched the whacked  function
--is called
mole:addEventListener( "touch", Whacked )


-----------------------------------------------------------------------------------------
GameStart( )