//
//  main.swift
//  Project1
//
//  Created by Fernando Arenas on 2020-10-05.
//  Copyright © 2020 Fernando Arenas. All rights reserved.
//

import Foundation

extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}
extension String  {
    var isNumber: Bool {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
}

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
    case 21: assignment21()
    case 22: assignment22()
    case 23: assignment23()
    case 24: assignment24()
    case 25: assignment25()
    case 26: assignment26()
    case 27: assignment27()
    case 28: assignment28()
    case 29: assignment29()
    case 30: assignment30()
    case 31: assignment31()
        
    case 99: print("\n Thank you!")
    default: print("Number needs to be between 1 and ...")
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
    
    let totalSpaces:Int = number * 2 + number%2
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
    
    for i in (1 + number%2)...number-1 {
        
        negSpacesLeft = i
        negSpacesRight = totalSpaces-i+1
        
        for n in 0...totalSpaces{
            
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
                print("\(counter) ", terminator:"")
                counter+=1
            }else {
                print("  ", terminator:"")
                
            }
        }
        print()
    }
}

func assignment20() {
    
    print ("Input a natural number: ",terminator:"" )
    let n = Int(readLine() ?? "0") ?? 0
    
    var counter:Int = 1
    
    for i in 0...n {
        
        var line = ""
        var space = ""
        
        for _ in 0..<(n-i) {
            space = "\(space) "
            
        }
        
        for j in 0..<n {
            
            if  j < i {
                line = "\(line) \(counter)"
                counter+=1
            }
        }
        print("\(space)\(line)")
        
    }
}

func assignment21() {
    print("In Construction")
}

func assignment22() {
    print ("Input a natural number: ",terminator:"" )
    var n = Int(readLine() ?? "0") ?? 0
    
    var binary:String = ""
    
    while ( n != 0) {
        if (n%2 == 1){
            binary = "1 \(binary)"
        }else{
            binary = "0 \(binary)"
        }
        n=n/2
    }
    print(binary)
}

func assignment23() {
    print ("Input a natural number: ",terminator:"" )
    var n = Int(readLine() ?? "0") ?? 0
    
    var octal:String = ""
    
    while ( n != 0) {
        octal = "\(n%8)\(octal)"
        n=n/8
    }
    print(octal)
}

func assignment24() {
    print ("Input a natural number: ",terminator:"" )
    var n = Int(readLine() ?? "0") ?? 0
    
    var hex:String = ""
    
    while (n != 0 ){
        switch n%16 {
        case 10: hex = "A\(hex)"
        case 11: hex = "B\(hex)"
        case 12: hex = "C\(hex)"
        case 13: hex = "D\(hex)"
        case 14: hex = "E\(hex)"
        case 15: hex = "F\(hex)"
        default: hex = "\(n%16)\(hex)"
        }
        n=n/16
    }
    print(hex)
}

func assignment25() {
    
    print ("Input a BINARY number: ",terminator:"" )
    let n = String(readLine() ?? "0")
    
    var multiplier:Int = 1
    var answer:Int = 0
    var index:Int = 0
    
    if (n.count<=8){
        for i in 0..<n.count{
            
            index = Int(n[n.count-1-i]) ?? 0
            
            if ( index == 1){
                answer=answer+multiplier
            }
            
            multiplier = multiplier*2
        }
        
        print ("\(n) Binary to Decimal is \(answer)")
        
    }else{
        print("Binary numbers are up to 8 digits")
    }
}

func assignment26() {
    
    print ("Input an OCT number: ",terminator:"" )
    let n = String(readLine() ?? "0")
    
    var multiplier:Int = 1
    var answer:Int = 0
    var digit:Int = 0
    var tempAnswer:Int = 0
    
    if (n.count<=8){
        for i in 0..<n.count{
            
            digit = Int(n[n.count-1-i]) ?? 0
            
            if ( digit >= 1){
                
                tempAnswer = digit*multiplier
                answer=answer+tempAnswer
            }
            
            multiplier = multiplier*8
        }
        
        print ("\(n) OCT to Decimal is \(answer)")
        
    }else{
        print("Binary numbers are up to 8 digits")
    }
}


func assignment27() {
//Need to figure out where to do this check: if (char.isNumber || char == "A" || char == "B" || char == "C" || char == "D" || char == "E" || char == "F") {}
    print ("Input a HEX number: ",terminator:"" )
    let n = String(readLine() ?? "0").uppercased()
    
    var multiplier:Int = 1
    var answer:Int = 0
    var char: String = ""
    var tempAnswer:Int = 0
    var digit:Int = 0
    
    if (n.count<=8){
        
        for i in 0..<n.count{
            
            char = n[n.count-1-i]
            
            switch char {
                case "A": digit = 10
                case "B": digit = 11
                case "C": digit = 12
                case "D": digit = 13
                case "E": digit = 14
                case "F": digit = 15
            default: digit = Int(char) ?? 0
            }
            
            if ( digit > 0){
                tempAnswer = digit*multiplier
                answer=answer+tempAnswer
            }
            
            multiplier = multiplier*16
            
        }
        
        print ("\(n) HEX to Decimal is \(answer)")
        
    }else{
        print("Binary numbers are up to 8 digits")
    }
}


func assignment28() {
    print ("Input natural number: ",terminator:"" )
    let input = Int(readLine() ?? "0") ?? 0
    
    var number: String = ""
    var answer:Int = 0
    
    for n in 0...input-1 {
        number = number+"1"
        answer = answer + Int(number)!
        
        if (n == input-1){
            print ("\(number) ", terminator: "")
        }else{
            print ("\(number) + ", terminator: "")
        }
        
    }
    
    print ("= \(answer)" )
    
}

func assignment29() {
    
}

func assignment30() {
    
}

func assignment31() {
    
}

func assignment32() {
    
}

