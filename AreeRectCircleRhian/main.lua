-----------------------------------------------------------------------------------------
-- Title: AreaRectCircle
-- Name:Rhian
-- Course: ICS20/3C
-- This program displays a rectangle and shown its area

-- creat my local variables
local areaTextRectangle
local textSizeRectangle = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle

local areaTextCircle
local textSizeCircle = 50
local myCircle
local radius = 150
local PI = 3.14
local areaOfCircle

-- set the background colour of my screen.Remeber that colors are between 0 and 1.
display.setDefault("background", 10/255, 100/255, 1/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)
myCircle = display.newCircle(10, 10, radius)

-- anchor the rectangle in the top left corner of the screen and sets its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- anchor the circle in the top left corner of the screen and its (x,y) position
myCircle.anchorX = 0
myCircle.anchorY = 0
myCircle.x = 500
myCircle.y = 70

-- set the width of the border
myRectangle.strokeWidth = 20

-- set the colour of the rectangle
myRectangle:setFillColor(0.7, 0.1, 0.3)

-- set the colour of the border
myRectangle:setStrokeColor(0, 1, 0)

-- calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

areaOfCircle = PI * radius * radius

-- write the area on the screen. Take into consideration the size of the font when positioning it on the screen
areaTextRectangle = display.newText("The area of this rectangle with a width of \n" .. 
	widthOfRectangle .. " and height of " .. heightOfRectangle .. " is " ..
	 areaOfRectangle .. "pixels2.", 0, 0, Arial, textSizeRectangle)


-- write the area on the screen. Take into consideration the size of the font when positioning it on the screen 
areaTextCircle = display.newText("The area of this circle is " .. areaOfCircle, 0, 0, 
				Arial, textSizeCircle)

-- anchor the text and set its (x,y) position
areaTextRectangle.anchorX = 0
areaTextRectangle.anchorY = 0
areaTextRectangle.x = 20
areaTextRectangle.y = display.contentHeight/2

-- Anchor the text and its (x,y)
areaTextCircle.anchorX = 0
areaTextCircle.anchorY = 0
areaTextCircle.x = 20
areaTextCircle.y = display.contentHeight*2/3


 


-----------------------------------------------------------------------------------------

