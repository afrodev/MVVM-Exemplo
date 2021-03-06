//
//  MVVM_SwiftUITests.swift
//  MVVM-SwiftUITests
//
//  Created by Humberto Vieira on 10/01/17.
//  Copyright © 2017 Humberto Vieira. All rights reserved.
//

import XCTest

class MVVM_SwiftUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFerrariF12DataDisplayed() {
        let app = XCUIApplication()
        
        // Pega a primeira tabela na UI
        let table = app.tables.element(boundBy: 0)
        
        // Pega a primeira celula da tabela e testa
        let ferrariCell = table.cells.element(boundBy: 0)
        XCTAssert(ferrariCell.staticTexts["Ferrari F12"].exists)
        XCTAssert(ferrariCell.staticTexts["979 HP"].exists)

        
        // Pega a segunda celula da tabela
        let ferrariCell2 = table.cells.element(boundBy: 1)
        XCTAssert(ferrariCell2.staticTexts["Pagani Zonda F"].exists)
        XCTAssert(ferrariCell2.staticTexts["807 HP"].exists)

        // Pega a terceira celula da tabela
        let ferrariCel3 = table.cells.element(boundBy: 2)
        XCTAssert(ferrariCel3.staticTexts["Lamborghini Aventador"].exists)
        XCTAssert(ferrariCel3.staticTexts["939 HP"].exists)

        
        
    }
    
}
