//
//  ViewController2.swift
//  actividad16
//
//  Created by Sebastián Vásquez Espinoza on 12-10-15.
//  Copyright © 2015 Sebastián Vásquez Espinoza. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //defino acción de boton volver
    @IBAction func volverBtn(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
}
