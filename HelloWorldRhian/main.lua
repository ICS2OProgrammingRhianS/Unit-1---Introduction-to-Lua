--Name:Rhian Smith---------------------------------------------------------------------------------------
--Course:ICS20/3C
--This program displays Hello, World on the ipad simulator and "Hellooooooo!" to the command
--terminal
-----------------------------------------------------------------------------------------

-- print "Hello, World" to the command terminal
print("***Helloooooooooooooo")

--hide the status bar
display.setStatusBar(display.hiddenStatusBar)

--sets the background colour
display.setDefault("background",237/255, 230/255, 235/255)

--create a local variable
local textObect

--displays text on the screen at position x = 500 and y = 500 with
--a deafult font style and font size 50
textObject = display.newText("Hello, Rhian", 500, 500, nil, 50)

--sets the color of the text
textObject:setTextColor(155/255, 42/255, 198/255)
 

