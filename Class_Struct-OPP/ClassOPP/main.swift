//
//  main.swift
//  ClassOPP
//
//  Created by ReviseUC73 on 12/1/2567 BE.
//

import Foundation


//let skeleton = Monster (health: 100,attackStrength: 20)
//let dragon = Dragon ()
//dragon.wingSpan = 5
//dragon.attackStrength = 15
//dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane")
//dragon.move ()
//dragon.attack()
let s1 = Monster (health: 100,attackStrength: 20)

let s2 = s1
s1.takeDamage(n: 10)
s2.takeDamage(n: 90)

print(s1.health,s2.health)




