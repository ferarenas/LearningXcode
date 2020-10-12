//
//  main.swift
//  Project1
//
//  Created by Fernando Arenas on 2020-10-05.
//  Copyright © 2020 Fernando Arenas. All rights reserved.
//

import Foundation

var choice:Int = 0

while (choice != 99){
    
    //Explains what the program does
//    print("Which Assignment would you like to check? \n")
//    print("1. Input 5 numbers and Order them from Min to Max")
//    print("2. Solve Cuadratic Ecuation ax^2-bx+c=0")
//    print("3. Solve 2 equations with 3 variables")
//    //Loops
//    print("LOOPS:")
//    print("4. Count up to a natural number")
//    print("5. Display Multiplication Table")
//    print("6. Add all natural numbers up to n")
//    print("7. Calculate average from all numbers from 1 to n")
//    print("8. Sum of odd numbers to n")
//    print("9. Average of all even numbers")
//
//    print("99. Exit \n")
//    print("Selection= ",terminator:"")
    
    choice =
    20
    print()
    //Int(readLine() ?? "0")!
    
    switch choice {
        
    case 1: assignment1()
    case 2: assignment2()
    case 3: assignment3()
    case 4: assignment4()
    case 5: assignment5()
    case 6: assignment6()
    case 7: assignment7()
    case 8: assignment8()
    case 9: assignment9()
    case 10: assignment10()
    case 11: assignment11()
    case 12: assignment12()
    case 13: assignment13()
    case 14: assignment14()
    case 15: assignment15()
    case 16: assignment16()
    case 17: assignment17()
    case 18: assignment18()
    case 19: assignment19()
    case 20: assignment20()
        
    case 99:
        print()
        print("Thank you!")
        
    default:
        print("Number needs to be between 1 and ...")
    }
    enterToContinue()
}

func enterToContinue(){
    print ("\nPress Enter to Continue")
    _ = readLine()
}

func assignment1(){
    
    var temp:Int
    
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
    
    print("\n Numbers in order are: \(first),\(second),\(third),\(fourth),\(fifth)")
    
}

func assignment2(){
 
    print ("a=",terminator:"")
    let a = Double(readLine() ?? "0")!
    
    print ("b=",terminator:"")
    let b = Double(readLine() ?? "0")!
    
    print ("c=",terminator:"")
    let c = Double(readLine() ?? "0")!
    
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

func assignment3(){
    
    //Variables to temporarily hold values
    var xTemp:Double = 0
    var zTemp:Double = 0
    var commonDen:Double = 0
    
    //Variables to get answers
    var x:Double = 0
    var y:Double = 0
    var z:Double = 0
    
   print ("\nInput x1 number")
   let xOne = Double(readLine() ?? "0") ?? 0
   print ("Input y1 number")
   let yOne = Double(readLine() ?? "0") ?? 0
   print ("Input z1 number")
   var zOne = Double(readLine() ?? "0") ?? 0
   print ("Input x2 number")
   let xTwo = Double(readLine() ?? "0") ?? 0
   print ("Input y2 number")
   let yTwo = Double(readLine() ?? "0") ?? 0
   print ("Input z2 number")
   let zTwo = Double(readLine() ?? "0") ?? 0
    
    //Solve first equation
    if (yOne>yTwo){
        commonDen = -(yOne/yTwo)
        
        xTemp = xTwo*commonDen
        zTemp = zTwo*commonDen
        
        x=xOne+xTemp
        z=zOne+zTemp
        
    }else{
        commonDen = -(yTwo/yOne)
        
        xTemp = xOne*commonDen
        zTemp = zOne*commonDen
        
        x=xTemp+xTwo
        z=zTemp+zTwo
    }
    
    x=(-z/x)
    
    print("x = \((round(x*1000))/1000)z")
    
    //Solve second equation
    x = xOne*x
    
    zOne=zOne+x
    
    y=(-zOne/yOne)
    
    print("y = \((round(y*1000))/1000)z")
}

func assignment4 () {
    
    var n=0
    
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0

    while (n < number) {
       n+=1
        n != number ? print("\(n), ", terminator:"") : print("\(n). ", terminator:"")
    }
}

func assignment5 () {
    
    var n=1
    
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0

    while (n <= 10) {
        print("\(number) x \(n) = \(number*n)")
        n+=1
    }
}

func assignment6 () {
    
    var n:Int = 1
    var answer: Int = 0
    
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0

    while (n <= number) {
        answer=answer+n
        n != number ? print("\(n) + ", terminator:"") : print("\(n) = \(answer)", terminator:"")
        n+=1
    }
}

func assignment7 () {
    
    var n:Int = 1
    var answer: Int = 0
    
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0
    
    print("(", terminator:"")

    while (n <= number) {
        answer=answer+n
        n != number ? print("\(n) + ", terminator:"") : print("\(n)) / \(n) = \(Double(answer)/Double(n))", terminator:"")
        n+=1
    }
}

func assignment8 () {
    
    var n:Int = 1
    var answer: Int = 0
    
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0

    while (n <= number) {
        answer=answer+n
        n == (number-1) || n == number ? print("\(n) = \(answer)", terminator:"") : print("\(n) + ", terminator:"")
        n+=2
    }
}

func assignment9 () {
    
    var n:Int = 1
    var answer: Int = 0
    
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0

    while (n <= number) {
        answer=answer+n
        n == (number-1) || n == number ? print("\(n) = \(answer)", terminator:"") : print("\(n) + ", terminator:"")
        n+=2
    }
}

func assignment10 () {
    
    var n:Int = 2
    var counter:Int = 0
    var sum:Double = 0
    
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0

    print("(", terminator:"")
    
    while (n <= number) {
        if (n%2 == 0){
            counter+=1
            sum=sum+Double(n)
            n == (number-1) || n == number ? print("\(n)) / \(counter) = \(sum/Double(counter))", terminator:"") : print("\(n) + ", terminator: "")
        }
        n+=2
    }
}

func assignment11 () {
    
    var n:Int = 1
    
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0
    
    while (n <= number) {
        if (number%n == 0) {
            n != number ? print("\(n), ", terminator:"") : print("\(n)", terminator:"")
        }
    n=n+1
    }
}

func assignment12 () {
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0
    
    for _ in 1...number {
        print()

        for _ in 1...number{
           print("* ", terminator:"")
        }
    }
    print()
}

func assignment13 () {
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0
    
    for i in 1...number {
        print("* ", terminator:"")
        
        for n in 1...number-1{
            if (i == 1 || i == number || n == number-1){
            print("* ", terminator:"")
            } else {
                print("  ", terminator:"")
            }
        }
        print()
    }
}

func assignment14 () {
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0
    
    for i in 1...number {
        print("* ", terminator:"")
        
        for n in 1...number-1{
            i == 1 || i == number || n == i-1 || n == number-1 || n+i == number ? print("* ", terminator:"") : print("  ", terminator:"")
        }
        print()
    }
}

func assignment15 () {
    print ("Input number of rows: ",terminator:"" )
    let rows = Int(readLine() ?? "0") ?? 0
    
    print ("Input number of columns: ",terminator:"" )
    let columns = Int(readLine() ?? "0") ?? 0
    
    for _ in 1...rows {
        print()

        for _ in 1...columns{
           print("* ", terminator:"")
        }
    }
    print()
}

func assignment16 () {
    print ("Input number of rows: ",terminator:"" )
    let rows = Int(readLine() ?? "0") ?? 0
    
    print ("Input number of columns: ",terminator:"" )
    let columns = Int(readLine() ?? "0") ?? 0
        
        for i in 1...rows {
            print("* ", terminator:"")
            
            for n in 1...columns-1{
                if (i == 1 || i == columns || n == columns-1 || i == rows){
                print("* ", terminator:"")
                } else {
                    print("  ", terminator:"")
                }
            }
            print()
        }
}

func assignment17 () {
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0
        
        for n in 1...number {
           print("* ", terminator:"")

            for i in 1...number-1{
                i < n ? print("* ", terminator:"") : print("  ", terminator:"")
            }
            print()
        }
}

func assignment18 () {
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0
    
    var counter: Int = 0
        
        for _ in 1...number {
           print("* ", terminator:"")
            counter+=1
            
            if (counter<number){
                for _ in 1...number-counter{
                    print("* ", terminator:"")
                    }
            }
            print()
        }
}

func assignment19 () {
    print ("Input natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0
    
    let totalSpaces:Int = number+(number-1)
    var negSpacesLeft:Int = totalSpaces-number
    var negSpacesRight:Int = 0
    
    for i in 1...number {
        
        negSpacesRight = negSpacesLeft+(i*2)
        
        for n in 1...totalSpaces{
            
            if (n>negSpacesLeft && n<negSpacesRight){
                
                if (i%2==0) {
                    if (n%2 == 0){
                       print("*", terminator:"")
                    }else {
                        print(" ", terminator:"")
                     }
                }else {
                    if (n%2 == 1){
                       print("*", terminator:"")
                    }else {
                        print(" ", terminator:"")
                     }
                 }
                
            }else{
                print(" ", terminator:"")
            }
        }
        negSpacesLeft-=1
        print()
    }
}

func assignment20 () {
    print ("Input natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0
    
    let totalSpaces:Int = number+(number-1)
    var negSpacesLeft:Int = 0
    var negSpacesRight:Int = 0
    
    for i in 1...number {
        
        negSpacesLeft = totalSpaces-number-i+1
        negSpacesRight = negSpacesLeft+(i*2)
        
        for n in 1...totalSpaces{
            
            if (n>negSpacesLeft && n<negSpacesRight){
                
                if (i%2==0) {
                    if (n%2 == 0){
                       print("*", terminator:"")
                    }else {
                        print(" ", terminator:"")
                     }
                }else {
                    if (n%2 == 1){
                       print("*", terminator:"")
                    }else {
                        print(" ", terminator:"")
                     }
                 }
                
            }else{
                print(" ", terminator:"")
            }
        }
        print()
    }

    for i in 1...number-1 {
        
        negSpacesLeft = i
        negSpacesRight = totalSpaces-i+1
        
        for n in 1...totalSpaces{
            
            if (n>negSpacesLeft && n<negSpacesRight){
                
                if (i%2==1) {
                    if (n%2 == 0){
                       print("*", terminator:"")
                    }else {
                        print(" ", terminator:"")
                     }
                }else {
                    if (n%2 == 1){
                       print("*", terminator:"")
                    }else {
                        print(" ", terminator:"")
                     }
                 }
                
            }else{
                print(" ", terminator:"")
            }
        }
        print()
    }
}
