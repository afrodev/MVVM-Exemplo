//
//  CarViewModel.swift
//  MVVM-Swift
//
//  Created by Humberto Vieira on 10/01/17.
//  Copyright © 2017 Humberto Vieira. All rights reserved.
//

import Foundation

class CarViewModel {
    private var car: Car?
    
    var modelText: String? {
        return car?.model
    }

    var makeText: String? {
        return car?.make
    }
    var horsepowerText: String? {
        guard let horsepower = car?.horsepower else {
            return nil
        }
        
        return "\(horsepower) HP"
    }
    
    var titleText: String? {
        guard let make = car?.make, let model = car?.model else {
            return nil
        }
        return "\(make) \(model)"
        
    }
    
    var photoURL: URL? {
        guard let photoURL = car?.photoURL else {
            return nil
        }
        
        return URL(string: photoURL)
    }
    
    init(car: Car) {
        self.car = car
    }
    
    
    
    
}
