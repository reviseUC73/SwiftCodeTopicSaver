import UIKit

let x:[Int] = Array(1...60)

print(x[2])


let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

//The number of letters in alphabet equals 26

let password = alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()!

print(password)


//func highestScore(scores: [String: Int]) {
//    if let highest = scores.values.max() {
//        print(highest)
//    } else {
//        print("No scores available.")
//    }
//}
//highestScore(scores: studentsAndScores)
//Don't change this
var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func highestScore(scores: [String: Int]) {
    
    //Write your code here.
    let a = studentsAndScores["Amy"]!
    let b = studentsAndScores["James"]!
    let c = studentsAndScores["Helen"]!
    
    if a > b && a > c {
        print(a)
    } else if b > a && b > c {
        print(b)
    } else {
        print(c)
    }
    
}
