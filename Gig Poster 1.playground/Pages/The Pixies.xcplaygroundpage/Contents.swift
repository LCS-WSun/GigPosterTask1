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

let black = Color(hue: 0 , saturation: 100, brightness: 0, alpha: 100)


// Begin your solution here...


//Since I don't know how to make the background black, i'm gonna make another rectangle and I make this first because of sequence

canvas.fillColor = black

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 415)


//The default color of the circle will be green for now
canvas.fillColor = limeGreen

canvas.drawShapesWithBorders = false

canvas.drawShapesWithFill = true


// Stride function of the circles

for verticalPosition in stride(from: -3, through: 418, by: 41) {

for horizontalPosition in stride(from: -5, through: 412, by: 41) {

    
verticalPosition
horizontalPosition
    

    //If statements of the circles to get the right color?

     if verticalPosition == 75||verticalPositio  == 350 {
     canvas.fillColor = limeGreen
      }
      else {
    canvas.fillColor = offWhite
     }

    
//Invoking and actually creating the circles
canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 37, height: 37)

}
}

//The top lime green rectangle
canvas.fillColor = limeGreen

canvas.drawRectangle(at: Point(x: 0, y: 404), width: 400, height: 600)










//Draw horizontal lines in grid

//for x in stride(from: 0, through: 400, by: 50) {
   // canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600)) }





/*:
 ## Use Source Control
 
 Remember to commit and push your work before 11:30 AM on Monday, January 13, 2020, please.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

