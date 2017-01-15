//
//  ViewController.swift
//  Crear Pizza
//
//  Created by Alejandro on 08/01/17.
//  Copyright © 2017 Alejandro. All rights reserved.
//

import UIKit

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    

    @IBOutlet weak var mensaje: UILabel!
    
    
    
    @IBOutlet weak var tam: UITextField!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
     tam.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
   
    }
    

    @IBAction func guardarTamaño(_ sender: Any) {
        let tamano:String?
        tamano = self.tam.text!
        print ("Tamaño \(tamano)")
    }
   
    @IBAction func textFieldDoneEditing ( sender : UITextField){
        sender.resignFirstResponder()
    }

    @IBAction func backgroundTap ( sender : UIControl)
    {let tamano:String?
        tamano = self.tam.text!
        if ((tamano!=="Chica")||(tamano!=="Mediana")||(tamano!=="Grande")){
            mensaje.text = "Tamaño: \(tamano!)"
        }else{
            mensaje.text = "Tamaño no válido"
        }
        
      
    
        tam.resignFirstResponder()
        
    }

       
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  
        
        let tamano:String?
        tamano = self.tam.text!
        let sigVista = segue.destination as! Masa
        sigVista.tam = tamano
    
    
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let tamano:String?
        tamano = self.tam.text!
        if ((tamano!=="Chica")||(tamano!=="Mediana")||(tamano!=="Grande")){
            mensaje.text = "Tamaño: \(tamano!)"
        }else{
            mensaje.text = "Tamaño no válido"
        }
        
        self.view.endEditing(true)
        return false
    }

}


    
    

    


