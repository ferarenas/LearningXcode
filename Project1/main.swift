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

    print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
    print("Which Assignment would you like to check?")
    print("- \"99\" to Exit \n")
    print("Selection= ",terminator:"")
    
    choice =
//   20; print()
        Int(readLine() ?? "0") ?? 0
    
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


func assignment1 () {
    
    var n=0
    
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0

    while (n < number) {
       n+=1
        n != number ? print("\(n), ", terminator:"") : print("\(n). ", terminator:"")
    }
}

func assignment2 () {
    
    var n=1
    
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0

    while (n <= 10) {
        print("\(number) x \(n) = \(number*n)")
        n+=1
    }
}

func assignment3 () {
    
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

func assignment4 () {
    
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

func assignment5 () {
    
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

func assignment6 () {
    
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

func assignment7 () {
    
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

func assignment8 () {
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

func assignment9 () {
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

func assignment10 () {
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

func assignment11 () {
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

func assignment12 () {
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

func assignment13 () {
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

func assignment14 () {
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

func assignment15 () {
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

func assignment16 () {
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

func assignment17 () {
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0
        
        for n in 1...number {
           print("1", terminator:"")

            for i in 1...number-1{
                i < n ? print(i+1, terminator:"") : print("", terminator:"")
            }
            print()
        }
}

func assignment18 () {
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0
        
        for n in 1...number {
           print(n, terminator:"")

            for i in 1...number-1{
                i < n ? print(n, terminator:"") : print("", terminator:"")
            }
            print()
        }
}

func assignment19 () {
    print ("Input a natural number: ",terminator:"" )
    let number = Int(readLine() ?? "0") ?? 0
            
    var counter:Int = 1
    
            for n in 1...number {
                for i in 1...number{
                    if (i <= n){
                        print(counter, terminator:"")
                        counter+=1
                    }else {
                        print("  ", terminator:"")
                        
                    }
                }
                print()
            }
}

func assignment20 () {
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
