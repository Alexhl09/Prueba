//
//  IngredientesInterfaceController.swift
//  Crear Pizza
//
//  Created by Alejandro on 19/02/17.
//  Copyright © 2017 Alejandro. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {
    
    @IBOutlet var ingrediente: WKInterfaceLabel!
    
    @IBOutlet var picker4: WKInterfacePicker!
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let ingrediente1 = WKPickerItem()
        ingrediente1.title = "Jamón"
        ingrediente1.accessoryImage = WKImage(imageName: "jamon.png")
        
        let ingrediente2 = WKPickerItem()
        ingrediente2.title = "Pepperoni"
        ingrediente2.accessoryImage = WKImage(imageName: "Pepperoni.png")
        
        let ingrediente3 = WKPickerItem()
        ingrediente3.title = "Piña"
        ingrediente3.accessoryImage = WKImage(imageName: "piña.png")
        
        let ingrediente4 = WKPickerItem()
        ingrediente4.title = "Aceituna"
        ingrediente4.accessoryImage = WKImage(imageName: "aceitunas.png")
        
        let ingrediente5 = WKPickerItem()
        ingrediente5.title = "Atún"
        ingrediente5.accessoryImage = WKImage(imageName: "atun.png")
        
        let ingrediente6 = WKPickerItem()
        ingrediente6.title = "Pavo"
        ingrediente6.accessoryImage = WKImage(imageName: "pavo.png")
        
        let ingrediente7 = WKPickerItem()
        ingrediente7.title = "Salchicha"
        ingrediente7.accessoryImage = WKImage(imageName: "salchicha.png")
        
        let ingrediente8 = WKPickerItem()
        ingrediente8.title = "Cebolla"
        ingrediente8.accessoryImage = WKImage(imageName: "cebolla.png")
        
        
        let ingredientess = [ingrediente1,ingrediente2, ingrediente3, ingrediente4, ingrediente5, ingrediente6, ingrediente7, ingrediente8]
        
        picker4.setItems(ingredientess)
        
        // Configure interface objects here.
    }

    @IBAction func obtenerIngrediente() {
        let valorIn = VI(i:"ingrediente")
        pushController(withName: "IdentificadorAAA", context: valorIn)
        
    
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func nuevoIngrediente(_ value: Int) {
        if value == 0 { ingrediente.setText("Jamón")
            
        } else if value == 1 {ingrediente.setText("Pepperoni")
        } else if value == 2 {ingrediente.setText("Piña")
            
        }else if value == 3 {ingrediente.setText("Aceituna")
            
        }else if value == 4 {ingrediente.setText("Atún")
            
        }else if value == 5 {ingrediente.setText("Pavo")
            
        }
        else if value == 6 {ingrediente.setText("Salchicha")
            
        }else if value == 7 {ingrediente.setText("Cebolla")
            
        }
    }
}
