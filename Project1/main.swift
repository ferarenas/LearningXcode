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
    print("2. Solve Cuadratic Ecuation")
    print("3. (IN CONSTRUCTION)")
    print("4. Exit \n")
    print("Selection= ",terminator:"")
    
    choice = Int(readLine() ?? "0")!
    
    switch choice {
    case 1:
        print()
        
        assignment1()
    case 2:
        print()
        assignment2()
    case 3:
        print()
        assignment3()
    case 4:
        print()
        print("Thank you!")
    default:
        print("Number needs to be between 1 and 3")
    }
}


func assignment1() {
    
    var temp:Int
    
    print ("Input 1st number")
    var first = Int(readLine() ?? "0")!
    
    print ("Input 2nd number")
    var second = Int(readLine() ?? "0")!
    
    print ("Input 3rd number")
    var third = Int(readLine() ?? "0")!
    
    print ("Input 4th number")
    var fourth = Int(readLine() ?? "0")!
    
    print ("Input 5th number")
    var fifth = Int(readLine() ?? "0")!
    
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
    
    //third
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
    
    //fourth
    if (fifth<=fourth){
        temp = fourth
        fourth = fifth
        fifth = temp
    }
    
    print("\(first),\(second),\(third),\(fourth),\(fifth)")
    
}



func assignment2() {
    print ("This solves for x in cuadratic equations (ax^2-bx+c=0 )")
    
    print ("Input a")
    let a = Double(readLine() ?? "0")!
    
    print ("Input b")
    let b = Double(readLine() ?? "0")!
    
    print ("Input c")
    let c = Double(readLine() ?? "0")!
    
    
    let x:Double = ((-1*b)-(((b*b)-(4*a*c)).squareRoot()))/(2*a)
    
    let y:Double = ((-1*b)+(((b*b)-(4*a*c)).squareRoot()))/(2*a)
    
    if (x.isNaN){
        print("x1 is not a number")
    }
    if (y.isNaN){
        print("x2 is not a number")
    }
    else {
        print("x1 = \((round(x*1000))/1000)")
        print("x2 = \((round(y*1000))/1000)")
    }
    
}


func assignment3(){
    
    
}
