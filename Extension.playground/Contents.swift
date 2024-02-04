//import Cocoa // macOs
import UIKit // ios

//let button = UIButton(frame:CGRect)

extension UIButton {
    func makeCircular(){
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2}
}
let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height:50))

button.backgroundColor = .red

button.makeCircular()


extension Double {
    func round(to places:Int) -> Double {
        let precisionNumber = pow(10, Double(places))
        //        let n = self
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
    
}

var myDouble = 3.14159
//let myRoundDobble = String(String(format: "%.1f", myDobbble))
//print(myRoundDobble)
myDouble = myDouble * 1000
myDouble.round()
myDouble = myDouble / 1006

myDouble.round(to: 1)


struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method")
    }}

let myOptional: MyOptional?
myOptional = MyOptional()
myOptional?.method()



