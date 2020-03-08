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
    

    //ATTEMPTS AT THE IF ELSE STATEMENT TO GET COLOR
    //Very non efficent way and it shows

    // if verticalPosition == 38||verticalPosition  == 366 //{
    // canvas.fillColor = offWhite
    //  }
    //  else {
   // canvas.fillColor = limeGreen
        
   // }

    //A if statement for horizontal restrictions
    
   //if horizontalPosition == 36||horizontalPosition  == 364 {
    //canvas.fillColor = offWhite
   //  }
   //  else {
  // canvas.fillColor = limeGreen
       
  // }
    
    
    //WHAT I WANT TO HAPPEN (9 vertical rows with if else statements) wonder if I can use a switch statement?
    

   // if verticalPosition < 38 && > 366
  //  canvas.fillColor = offWhite
   // }
  //  else {
   // canvas.fillColor = limeGreen
   // }
    
    //Then you keep doing this for the rest 8 rows and so on
    
     // if verticalPosition < 38 && > 325
     //  canvas.fillColor = offWhite
      // }
     //  else {
      // canvas.fillColor = limeGreen
      // }
       
    
    

    
    
    
    

    //WHAT IF I USED A SWITCH STATEMENT... (can you combine if with it?) (does not work)
    
    //switch verticalPosition {
   // case 1: 36
    //canvas.fillColor = limeGreen
   // {
        
    
    
    
//Invoking and actually creating the circles
canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 37, height: 37)
}

//The top lime green rectangle
canvas.fillColor = limeGreen

canvas.drawRectangle(at: Point(x: 0, y: 404), width: 400, height: 600)


    //Pixies text
canvas.drawText(message: "pixies", at: Point(x: 7, y: 415), size: 71, kerning: 0.0)



    //First rows of tiny text
    canvas.drawText(message: "saturday", at: Point(x: 13, y: 550), size: 10, kerning: 0.0)

   canvas.drawText(message: "december 13 1986", at: Point(x: 13, y: 535), size: 10, kerning: 0.0)

   canvas.drawText(message: "9pm over 21", at: Point(x: 13, y: 520), size: 10, kerning: 0.0)



    //Second rows of tiny text
    canvas.drawText(message: "at the rat", at: Point(x: 279, y: 550), size: 10, kerning: 0.0)

   canvas.drawText(message: "528 commonwealth", at: Point(x: 279, y: 535), size: 10, kerning: 0.0)

   canvas.drawText(message: "boston, mass.", at: Point(x: 279, y: 520), size: 10, kerning: 0.0)



    // White Text
   canvas.drawText(message: "with", at: Point(x: 270, y: 430), size: 10, kerning: 0.0)

  // canvas.drawText(message: "throwing muses", at: Point(x: 270, y: 415), size: 10, kerning: 0.0)

    //canvas.drawText(message: "big dipper ", at: Point(x: 270, y: 400), size: 10, kerning: 0.0)
    
    
    
    
    
    
    




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

}
