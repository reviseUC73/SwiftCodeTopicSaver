//
//  Dragon.swift
//  ClassOPP
//
//  Created by ReviseUC73 on 12/1/2567 BE.
//

import Foundation

class Dragon:Monster {
    
    var wingSpan = 2
    
    func talk(speech: String) {
        print("Says: \(speech)")
    }
    override func attack() {
        
        super.attack() // calss attack function of superclass 
        print("Attack function are overrided ")
    }
    
}
