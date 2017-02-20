//
//  QuesoInterfaceController.swift
//  Crear Pizza
//
//  Created by Alejandro on 19/02/17.
//  Copyright © 2017 Alejandro. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {
    @IBOutlet var picker2: WKInterfacePicker!
    @IBOutlet var valoraQueso: WKInterfaceLabel!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        let queso1 = WKPickerItem()
        queso1.title = "Mozarela"
        queso1.accessoryImage = WKImage(imageName: "Cheese.png")
        
        let queso2 = WKPickerItem()
        queso2.title = "Parmesano"
        queso2.accessoryImage = WKImage(imageName: "Cheese.png")
        
        let queso3 = WKPickerItem()
        queso3.title = "Cheddar"
        queso3.accessoryImage = WKImage(imageName: "Cheese.png")
        
        let queso4 = WKPickerItem()
        queso4.title = "Sin queso"
        queso4.accessoryImage = WKImage(imageName: "Cheese.png")
        
    
        
        let quesos = [queso1, queso2, queso3, queso4]
        
        picker2.setItems(quesos)
    }

    @IBAction func obtenerQueso() {
        let valorQueso = Valor(d:"queso")
        pushController(withName: "IdentificadorAAA", context: valorQueso)
    }
    

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func nuevoQueso(_ value: Int) {
        if value == 0 { valoraQueso.setText("Mozarela")
            
        } else if value == 1 {valoraQueso.setText("Parmesano")
        } else if value == 2 {valoraQueso.setText("Cheddar")
        }else if value == 3 {valoraQueso.setText("Sin queso")
        }

    
    
    

}
}
