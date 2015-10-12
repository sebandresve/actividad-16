//
//  User.swift
//  actividad16
//
//  Created by Sebastián Vásquez Espinoza on 12-10-15.
//  Copyright © 2015 Sebastián Vásquez Espinoza. All rights reserved.
//

import UIKit

public class User {
    
    //defino campos de la clase
    var name: String
    var pass: String
    
    //inicializo clase
    public init (name: String, pass: String) {
        self.name = name
        self.pass = pass
    }
    
    //retorna nombre
    public func getName ()->String {
        return name
    }
    
    //retorna contraseña
    public func getPass ()->String {
        return pass
    }
    
}
