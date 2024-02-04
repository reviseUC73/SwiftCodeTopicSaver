// Check Nil
let myOptional: String?
//myOptional = nil
myOptional = "yoo"


//1 force warp comment this and open to show eeror (not good)
//let txt:String = myOptional! //error

//2 check for nil value
print("")
print("2 check for nil value")
if myOptional != nil {
    let text:String = myOptional!
    let text2:String = myOptional!
    
} else{
    print("my opinal not found")
}


//3 opional blind
print("")
print("3 opional blind")
if let safeOptional = myOptional {
    let text: String = safeOptional
    let text2: String = safeOptional
    print(safeOptional)
} else {
    print ("myOptional was found to be nil.")}
    
// 4 nil coalescing operator
print("")
print("4 nil coalescing operator")
let text:String = myOptional ?? "I am defealt value"



// 5 opinal chaining -> good way to avoid error when opianl is  nil by it not do some thing(see line 39/40 for compare)
print("")
print("5 opinal chaining")

struct MyOptional2 {
    var property = 123
    func method() {
        print("I am the struct's method")
    }}



let myOptional2: MyOptional2?

//myOptional2 = nil
myOptional2 = MyOptional2()

print(myOptional2?.property)
myOptional2?.method()

print()


class Room {
    var numberOfWindows: Int
    init(numberOfWindows: Int){
        self.numberOfWindows = numberOfWindows
    }
}

class House {
    var room: Room?
    init(room: Room) {
          self.room = room
      }
}

let roomThree = Room(numberOfWindows: 3)
let myHouse = House(room: roomThree)
//let windowCount = myHouse.room?.numberOfWindows ?? 3

// Attempt to get the number of windows in the room
if let windowCount = myHouse.room?.numberOfWindows {
    print("The room has \(windowCount) windows.")
} else {
    print("Cannot retrieve the number of windows.")
}

print()

/// Opinal chaining คือการเขียน function แบบ chanin ที่เอาไปผูกกันเรื่อยๆ
class Person {
   let name: String
   init(name: String) {
     self.name = name
   }
}
class Dog {
    let owner: Person?
    init(owner: Person?) {
        self.owner = owner
    }
}
let ownedDog = Dog(owner: Person(name: "I'Boss"))
let strayDog = Dog(owner: nil)



/// IN PRINT FOR GET RESULT FROM Opinal chaining

///Not good to print
print(ownedDog.owner?.name) // ok case
print(strayDog.owner?.name) // bad case

print("--------")
///GOOD TO PRINT
///Using optional binding to unwrap the optional value
if let ownerName = ownedDog.owner?.name {
    print(ownerName)
} else {
    print("This dog has no owner.")
}

if let strayDogName = strayDog.owner?.name {
    print(strayDogName)
} else {
    print("This strayDog has no owner.(Nil)")
}
print()

