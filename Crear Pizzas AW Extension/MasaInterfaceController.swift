//
//  MasaInterfaceController.swift
//  Crear Pizza
//
//  Created by Alejandro on 19/02/17.
//  Copyright © 2017 Alejandro. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {

    @IBOutlet var masa: WKInterfaceLabel!
    
    @IBOutlet var picker3: WKInterfacePicker!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        let masa1 = WKPickerItem()
        masa1.title = "Delgada"
        masa1.accessoryImage = WKImage(imageName: "masa.png")
        
        let masa2 = WKPickerItem()
        masa2.title = "Gruesa"
        masa2.accessoryImage = WKImage(imageName: "masa.png")
        
        let masa3 = WKPickerItem()
        masa3.title = "Crujiente"
        masa3.accessoryImage = WKImage(imageName: "masa.png")
        
        let masas = [masa1, masa2, masa3]
        
        picker3.setItems(masas)
        // Configure interface objects here.
    }
    
    @IBAction func obtenerMasa() {
        let valorMasa = AAA(m:"masa")
        pushController(withName: "IdentificadorAAA", context: valorMasa)

    }
    

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func nuevaMasa(_ value: Int) {
        if value == 0 { masa.setText("Delgada")
            
        } else if value == 1 {masa.setText("Gruesa")
        } else if value == 2 {masa.setText("Crujiente")
    
        }
    }}
