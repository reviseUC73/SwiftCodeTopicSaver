import Cocoa

var greeting = "Hello, playground"



func mathOperate(firstNumer: Double, secondNumer: Double, with: (Double, Double) -> Double) -> Double {
    return with(firstNumer,secondNumer)
}
let max = mathOperate(firstNumer: 10.0, secondNumer: 5.0, with: {
    (firstNumber, secondNumber) in
    
        if firstNumber > secondNumber {
            return firstNumber
        } else {
            return secondNumber
        }
} )
print("fefe")

//
//func getNextInteger() -> Result<Int, Error> { /* ... */ }
/////
//    let integerResult = getNextInteger()
//integerResult == .success(5)
//   let stringResult = integerResult.map { String($0) }
//stringResult == .success("5")
