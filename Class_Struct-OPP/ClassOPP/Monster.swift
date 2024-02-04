//
//  Monster.swift
//  ClassOPP
//
//  Created by ReviseUC73 on 12/1/2567 BE.
//

import Foundation

class Monster {
    //    var health = 100
    //    var attackStrength = 10
    var health:Int
    var attackStrength:Int
    
    // class must be init attribute BUT Struct not need
    // Struct can not inheritance
    // strunt cannot change value of attribute (cannot call health = 10+health or self.health = 10 + self.health  ) 
    //but if you want to call you will set 'mutating' func ... to you can change value of attrite in strcet
    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    func takeDamage(n:Int)
    {
        health = health - n
        print("health : ",health)
//        print("self.health : ",self.health)
        
    }

    
    func move() {
        print("Walk forwards.")
    }
    func attack() {
        print("Attack function From SuperClass(Monster)")
        
    }
}

