//
//  PedidoInterfaceController.swift
//  Crear Pizza
//
//  Created by Alejandro on 19/02/17.
//  Copyright © 2017 Alejandro. All rights reserved.
//

import WatchKit
import Foundation


class PedidoInterfaceController: WKInterfaceController {
    
    var valorTamaño :String?
    var masa :String?
    var ValoraQueso:String?
    var ingrediente: String?

    @IBOutlet var todo: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func ver() {
        
        todo.setText("(chica), / (parmesano), / (delgada), / (pepperoni)")
        
    }
    }
    



