//
//  main.swift
//  Project1
//
//  Created by Fernando Arenas on 2020-10-05.
//  Copyright © 2020 Fernando Arenas. All rights reserved.
//

import Foundation

var choice:Int = 0

while (choice != 4){
    
    //Explains what the program does
    print("Which Assignment would you like to check? \n")
    print("1. Input 5 numbers and Order them from Min to Max")
    print("2. Solve Cuadratic Ecuation ax^2-bx+c=0")
    print("3. (IN CONSTRUCTION)")
    print("4. Exit \n")
    print("Selection= ",terminator:"")
    
    choice = Int(readLine() ?? "0")!
    
    switch choice {
    case 1:
       print ("\nInput 1st number")
       var first = Int(readLine() ?? "0") ?? 0
       print ("Input 2nd number")
       var second = Int(readLine() ?? "0") ?? 0
       print ("Input 3rd number")
       var third = Int(readLine() ?? "0") ?? 0
       print ("Input 4th number")
       var fourth = Int(readLine() ?? "0") ?? 0
       print ("Input 5th number")
       var fifth = Int(readLine() ?? "0") ?? 0
    
       print("\n Numbers in order are: \n",assignment1(first:&first,second:&second,third:&third,fourth:&fourth,fifth:&fifth))
        
       print ("\nPress Enter to Continue")
       readLine()
        
    case 2:
        
        print ("a=",terminator:"")
        let a = Double(readLine() ?? "0")!
        
        print ("b=",terminator:"")
        let b = Double(readLine() ?? "0")!
        
        print ("c=",terminator:"")
        let c = Double(readLine() ?? "0")!
        
        assignment2(a:a, b:b, c:c)
        
        print ("\nPress Enter to Continue")
        readLine()
        
    case 3:
        print ("\nInput a1 number")
        var x1 = Double(readLine() ?? "0") ?? 0
        print ("Input b1 number")
        var y1 = Double(readLine() ?? "0") ?? 0
        print ("Input c1 number")
        var z1 = Double(readLine() ?? "0") ?? 0
        print ("Input a2 number")
        var x2 = Double(readLine() ?? "0") ?? 0
        print ("Input b2 number")
        var y2 = Double(readLine() ?? "0") ?? 0
        print ("Input c2 number")
        var z2 = Double(readLine() ?? "0") ?? 0
        
        assignment3(x1:&x1, y1:&y1, z1:&z1, x2:&x2, y2:&y2, z2:&z2)
        
        print ("\nPress Enter to Continue")
        readLine()
        
    case 4:
        print()
        print("Thank you!")
    default:
        print("Number needs to be between 1 and 3")
    }
}

//ADD DOCUMENTATION
func assignment1(first: inout Int, second: inout Int, third: inout Int, fourth: inout Int, fifth: inout Int) -> String{
    
    var temp:Int
    
    //First
    if (second<=first){
        temp = first
        first = second
        second = temp
    }
    if (third<=first){
        temp = first
        first = third
        third = temp
    }
    if (fourth<=first){
        temp = first
        first = fourth
        fourth = temp
    }
    if (fifth<=first){
        temp = first
        first = fifth
        fifth = temp
    }
    
    //Second
    if (third<=second){
        temp = second
        second = third
        third = temp
    }
    if (fourth<=second){
        temp = second
        second = fourth
        fourth = temp
    }
    if (fifth<=second){
        temp = second
        second = fifth
        fifth = temp
    }
    
    //Third
    if (fourth<=third){
        temp = third
        third = fourth
        fourth = temp
    }
    if (fifth<=third){
        temp = third
        third = fifth
        fifth = temp
    }
    
    //Fourth
    if (fifth<=fourth){
        temp = fourth
        fourth = fifth
        fifth = temp
    }
    
    return("\(first),\(second),\(third),\(fourth),\(fifth)")
    
}


//ADD DOCUMENTATION
func assignment2(a:Double, b:Double, c:Double){
 
    
    let x:Double = ((-1*b)-(((b*b)-(4*a*c)).squareRoot()))/(2*a)
    
    let y:Double = ((-1*b)+(((b*b)-(4*a*c)).squareRoot()))/(2*a)
    
    if (x.isNaN){
        print("\n x1 is not a number")
    }
    if (y.isNaN){
        print("\n x2 is not a number")
    }
    else {
        print("\nThe answers are:")
        print("x1 = \((round(x*1000))/1000)")
        print("x2 = \((round(y*1000))/1000)")
    }
    
}

//ADD DOCUMENTATION
func assignment3(x1: inout Double, y1: inout Double, z1: inout Double, x2: inout Double, y2: inout Double, z2: inout Double){
    
    
    
    var xTemp:Double = 0
    var zTemp:Double = 0
    
    var x:Double = 0
    var y:Double = 0
    var z:Double = 0
    
    
    var commonDen:Double = 0
   
    //first equation
    if (y1>y2){
        commonDen = -(y1/y2)
        
        xTemp = x2*commonDen
        zTemp = z2*commonDen
        
        x=x1+xTemp
        z=z1+zTemp
        
    }else{
        commonDen = -(y2/y1)
        
        xTemp = x1*commonDen
        zTemp = z1*commonDen
        
        x=xTemp+x2
        z=zTemp+z2
    }
    
    x=(-z/x)
    
    print("x = \((round(x*1000))/1000)z")
    
    //second equation
    x = x1*x
    
    z1=z1+x
    
    y=(-z1/y1)
    
    print("y = \((round(y*1000))/1000)z")
}
