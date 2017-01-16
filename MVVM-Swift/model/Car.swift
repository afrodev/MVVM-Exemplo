//
//  Car.swift
//  MVVM-Swift
//
//  Created by Humberto Vieira on 10/01/17.
//  Copyright © 2017 Humberto Vieira. All rights reserved.
//

import Foundation


protocol MotorVehicle {
    func create(vehicle: T)
    func putMotor(vehicle: T)
    associatedtype T
}

class Motor {
    var motor: String
    
    init(motor: String) {
        self.motor = motor
    }
}

class Car: MotorVehicle {
    var model: String
    var make: String
    var kilowatts: Int
    var photoURL: String
    
    typealias T = Motor
    
    init(model: String, make: String, kilowatts: Int, photoURL: String) {
        self.model = model
        self.make = make
        self.kilowatts = kilowatts
        self.photoURL = photoURL
    }
    
    func create(vehicle: Motor) {
        
    }
    
    func putMotor(vehicle: Motor) {
        
    }
    
    
    
    
    
    
}
