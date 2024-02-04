//
//  main.swift
//  OOP Ingerit class
//
//  Created by ReviseUC73 on 31/1/2567 BE.
//

import Foundation
protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true

    
    func layEgg() {
        print("The bird makes a new bird in a shell.")
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }

    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum { // CHECK : all obj that use flyingDemo need must to have impremented from Canfly protocal
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane)
