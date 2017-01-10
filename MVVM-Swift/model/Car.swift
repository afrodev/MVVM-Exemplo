//
//  Car.swift
//  MVVM-Swift
//
//  Created by Humberto Vieira on 10/01/17.
//  Copyright © 2017 Humberto Vieira. All rights reserved.
//

import Foundation


class Car {
    var model: String
    var make: String
    var kilowatts: Int
    var photoURL: String
    
    init(model: String, make: String, kilowatts: Int, photoURL: String) {
        self.model = model
        self.make = make
        self.kilowatts = kilowatts
        self.photoURL = photoURL
    }
    
    
    
    
}
