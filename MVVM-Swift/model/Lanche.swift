
//
//  File.swift
//  MVVM-Swift
//
//  Created by Humberto Vieira on 15/01/17.
//  Copyright © 2017 Humberto Vieira. All rights reserved.
//

import Foundation

class Lanche<T> {
    func criar(lanche: T) {
        print("Excelente")
    }
    
    func temperar(lance: T){
        print("Muito Bom")
    }
}


class Main {
    
    init() {
        let lanche = Lanche<Car>()
        lanche.criar(lanche: Car(model: "aa", make: "b", kilowatts: 2, photoURL: "ss"))
        
        
        
    }
    
}
