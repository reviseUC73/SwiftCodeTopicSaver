//
//  main.swift
//  delegateLifeSupport
//
//  Created by ReviseUC73 on 31/1/2567 BE.
//

import Foundation

protocol AdvancedLifeSupport {
    func performCPR()
}

//MARK: - Delegater

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?

    func assessSituation() {
        print("Can you tell me what happened?")
    }

    func medicalEmergency() {
        delegate?.performCPR() //  ทำไมต้องทำเป็น opinal
    }
}


//MARK: - Use Delegate Caller

struct Paramedic: AdvancedLifeSupport {
    
    var x = EmergencyCallHandler()
//    init(handler: EmergencyCallHandler) {
//        handler.delegate = self
//    }
    init(){
        x.delegate = self
    }

    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}


class Doctor: AdvancedLifeSupport {
    /// similar viewDidLoad
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }

    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }

    func useStethoscope() {
        print("Listening for heart sounds")
    }
}

    class Surgeon: Doctor {
        override func performCPR() {
            super.performCPR()
            print("Sings 'Staying Alive' by the Bee Gees")
        }

        func useElectricDrill() {
            print("Whirr...")
        }
    }

let emilio = EmergencyCallHandler()
let angela = Surgeon(handler: emilio)
//let rew = Paramedic(handler: emilio)
var san = Paramedic()
emilio.delegate = san

print("------------------------------------------------------------------")
emilio.assessSituation()
print("------------------------------------------------------------------")
emilio.medicalEmergency()
print("------------------------------------------------------------------")



