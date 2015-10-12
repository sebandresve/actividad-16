//
//  ViewController.swift
//  actividad16
//
//  Created by Sebastián Vásquez Espinoza on 12-10-15.
//  Copyright © 2015 Sebastián Vásquez Espinoza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //defino campos de texto
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    
    //defino array de usuarios
    var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //agrego usuarios a array de usuarios
        users += [User(name: "user1", pass: "pass1"), User(name: "user2", pass: "pass2")]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //defino acción de boton ingresar
    @IBAction func ingresarBtn(sender: AnyObject) {
        var userFound: Bool
        userFound = false
        //busca si usuario y contraseña ingresados existen en array
        for userNames in users {
            if userNames.getName() == nameTxt.text && userNames.getPass() == passTxt.text {
                userFound = true
            }
        }
        //abre nueva escena
        if userFound == true {
            let ingresarBtn = self.storyboard?.instantiateViewControllerWithIdentifier("View2") as! ViewController2
            
            self.navigationController?.showViewController(ingresarBtn, sender: sender)
        }
        
    }
    
    //defino acción de boton limpiar
    
    @IBAction func limpiarBtn(sender: AnyObject) {
        //deja campos en blancos
        nameTxt.text = ""
        passTxt.text = ""
    
    }
    
}
