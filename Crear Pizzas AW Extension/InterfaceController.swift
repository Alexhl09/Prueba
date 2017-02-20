//
//  InterfaceController.swift
//  Crear Pizzas AW Extension
//
//  Created by Alejandro on 18/02/17.
//  Copyright © 2017 Alejandro. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
     
    
    @IBOutlet var valorTamaño: WKInterfaceLabel!
    
   
    @IBOutlet var picker: WKInterfacePicker!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let item1 = WKPickerItem()
        item1.title = "Chica"
        item1.accessoryImage = WKImage(imageName: "pizzaslice.png")
        
        let item2 = WKPickerItem()
        item2.title = "Mediana"
        item2.accessoryImage = WKImage(imageName: "pizzaslice.png")
        
        let item3 = WKPickerItem()
        item3.title = "Grande"
        item3.accessoryImage = WKImage(imageName: "pizzaslice.png")
        
        let itemsArray = [item1, item2, item3]
        
        picker.setItems(itemsArray)
    }

        
    @IBAction func accionCalcular() {
        
        let valorContexto = Valora(t:"tamaño")
        pushController(withName: "IdentificadorAAA", context: valorContexto)
    }
        
     
    
    override func willActivate() {
        
        

        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
  
    @IBAction func pickerChanged(_ value: Int) {
      
        
        if value == 0 { valorTamaño.setText("Chica")
            
        } else if value == 1 {valorTamaño.setText("Mediana")
        } else if value == 2 {valorTamaño.setText("Grande")

        }
   
    }
}
