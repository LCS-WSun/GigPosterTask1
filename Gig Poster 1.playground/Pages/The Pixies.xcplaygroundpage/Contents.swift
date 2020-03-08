//: # Gig Poster 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![pixies-no-grid](pixies-no-grid.png "Pixies")
 ![pixies-with-grid](pixies-with-grid.png "Pixies")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let limeGreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)

// Begin your solution here...

canvas.fillColor = limeGreen

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)



//creating the circle stride function 

canvas.fillColor = offWhite

canvas.drawShapesWithBorders = false

canvas.drawShapesWithFill = true


//ROW ONE

for verticalPositions in stride(from: 3, through: 418, by: 41) {

for horizontalPositions in stride(from: -1, through: 412, by: 41) {
// 17.5 = radius and the whole = 35
// change the 40 to 40 - 35 = 5
// 375 + 17.5 = 410
// 35 * 11 = 385
// so the spacing is 40 so I add this to the 375 point, I also know that the width is 35 and the height is the same and should add the 40 to 17.5 which is half of 35 to get me 432
//This is old logic that didn't work so ignore
    
verticalPositions
horizontalPositions
    
canvas.drawEllipse(at: Point(x: horizontalPositions, y: verticalPositions), width: 37, height: 37)

}
}



//Draw horizontal lines in grid

for x in stride(from: 0, through: 400, by: 50) {
    canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600)) }




/*:
 ## Use Source Control
 
 Remember to commit and push your work before 11:30 AM on Monday, January 13, 2020, please.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

