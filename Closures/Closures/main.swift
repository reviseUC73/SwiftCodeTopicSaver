//
//  main.swift
//  Closures
//
//  Created by ReviseUC73 on 1/2/2567 BE.
//

import Foundation

/// Group code that executes together, without creating a named function.


//func backward(_ s1: String, _ s2: String) -> Bool {
//    return s1 > s2
//}
//let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

//var reversedNames = names.sorted(by: backward)


//func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//    func incrementer() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementer

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
// @inlinable public func  sorted(by areInIncreasingOrder: (Element, Element) throws -> Bool) rethrows -> [Element]

// MARK: -1 -> Closure Expression

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames_NormalFunc = names.sorted(by: backward)
print(reversedNames_NormalFunc)

var reversedNames_Cloures = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
print(reversedNames_Cloures)

var reversedNames_Cloures2 = names.sorted(by: { (s1: String, s2: String) -> Bool in s1 > s2 } )
print(reversedNames_Cloures2)

var reversedNames_Cloures3 = names.sorted(by: { $0 > $1 } )
print(reversedNames_Cloures3)



// MARK: 0 -> Closure none para & return void
func myPrint() -> Void {
    print("Function :  none para & return void")
}

let myPrintCloures = { () -> Void in
    print("Closure :  none para & return void")
}


// MARK: 1 -> Closure that takes parameters and returns a value

func addNum(x1: Int?, x2: Int?) -> Int {
    print("use addNum(normal)")
    if let unwrappedX1 = x1, let unwrappedX2 = x2 {
        return unwrappedX1 + unwrappedX2
    } else {
        return 0 // or handle the case where one or both values are nil
    }
}

let addNumCloures = { (x1: Int?, x2: Int?)  -> Int in
    if let unwrapX1 = x1 , let unwrapX2 = x2 {
        return unwrapX1 + unwrapX2
    }
    return 0
}
/// Executing the closure with parameters
print("-------sum_normal---------")
print(addNum(x1: 4, x2: 1))
//print(addNum(x1: 4, x2: 1.01)) // error
let sum_normal = addNum(x1: 4, x2: 1)
print("\(sum_normal)")
print("----------sum_Cloures--------")
print(addNumCloures(4,1))
let sum_Cloures = addNumCloures(4,1)
print(sum_Cloures)
print("----------------------")


// MARK: 2 -> Closure as a function with parameter
func performOperation(operation: (Int, Int) -> Int,a: Int,b: Int)
{
    let result = operation(100, b) * a
    print("a : \(a)")
    print("b : \(b)")
    print("(operation(\(100), \(b)) * \(a))")
    print("Result is \(result)")
}

// Using the closure MARK2
performOperation(operation: addNum , a: 10, b: 2)
print("--------------------------------------")
// Using the closure MARK2 -> inline closure expression

performOperation(operation: { ( x:Int ,y:Int) -> Int in
    print("x :> \(x)")
    print("y :> \(y)")
    ///  a: 10, b: 2 is para meter of oneline function
    return x+y }, a: 10, b: 2)

/// perform is func have opater that have two parameter x , y


// MARK: Trailing Closures


func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int { return operation( n1,n2 ) }


func add (no1: Int, no2 : Int) -> Int {
    return no1 + no2
}
func mutiply(no1: Int, no2 : Int) -> Int {
    return no1 * no2
}
// MARK: Normal function
let x = calculator(n1: 1, n2: 2, operation: add)

let y = calculator(n1: 2, n2: 3, operation: mutiply )
// MARK: Closures
let z1 = calculator(n1: 10, n2: 21, operation: { (no1 : Int, no2  : Int)-> Int in return no1 - no2 })

let z2 = calculator(n1: 10, n2: 21, operation: { (no1,no2) -> Int in  no1 - no2 })

let z3 = calculator(n1: 10, n2: 21, operation: {$0 - $1})
// Tailing Closures
let z4 = calculator(n1: 10, n2: 21) {$0 - $1}
let z5 = calculator(n1: 10, n2: 21) { no1, no2 in return no1 - no2 }
print(calculator( n1 : 11, n2: 3) { x1, x2 in return x1 * x2} ) // func mutiply(no1: Int, no2 : Int) -> Int { return no * no2}
print(x,y,z1,z2,z3,z4)


let array = [6,1,31,13,53,1]

func addOne (n1 : Int) -> Int {
    return n1 + 1
}
print(array.map(addOne)) // normal
print(array.map(){$0 + 1}) // use Closures

/// explame use case
//print(array.map(){print("\($0)")}) // nood closure by rew
print(array.map(){String($0)})

// closure expression syntax
// { (para) -> return type in statements }

