//
//  actividad16Tests.swift
//  actividad16Tests
//
//  Created by Sebastián Vásquez Espinoza on 12-10-15.
//  Copyright © 2015 Sebastián Vásquez Espinoza. All rights reserved.
//

import UIKit
import XCTest
@testable import actividad16

class actividad16Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
        //XCTFail("Prueba fallida")
        XCTAssertEqual(User(name: "user1", pass: "pass1").getName(), "user1", "Probando objeto")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            //defino array de usuarios
            var users = [User]()
            users += [User(name: "user1 ", pass: "pass1"), User(name: "euser2", pass: "pass2"),
                      User(name: "auser2", pass: "pass2"), User(name: "fuser2", pass: "pass2"),
                      User(name: "buser2", pass: "pass2"), User(name: "guser2", pass: "pass2"),
                      User(name: "cuser2", pass: "pass2"), User(name: "huser2", pass: "pass2"),
                      User(name: "duser2", pass: "pass2"), User(name: "iuser2", pass: "pass2")]
        
            // Ordenamos el array utilizando método sort
            users.sortInPlace({$0.name < $1.name})
            
            //imprime
            NSLog("\(users)")
            
        }
    }
    
}
