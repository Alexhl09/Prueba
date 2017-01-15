//
//  Ingredientes.swift
//  Crear Pizza
//
//  Created by Alejandro on 08/01/17.
//  Copyright © 2017 Alejandro. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var uno: UITextField!
    
    @IBOutlet weak var mensajeUno: UILabel!

    @IBOutlet weak var dos: UITextField!
    @IBOutlet weak var mensajeDos: UILabel!
    
    @IBOutlet weak var tres: UITextField!
 
    @IBOutlet weak var mensajeTres: UILabel!
    
    var tam:String?
    var mas:String?
    var que:String?
    override func viewDidLoad() {
        super.viewDidLoad()
       
                // Do any additional setup after loading the view.
    }
    @IBAction  func textFieldDoneEditing ( sender : UITextField){
        sender.resignFirstResponder()
    }
    
    @IBAction  func backgroundTap ( sender : UIControl)
    {   let i1:String?
        i1 = self.uno.text!
        let i2:String?
        i2 = self.dos.text!
        let i3:String?
        i3 = self.tres.text!
        if ((i1!=="Jamón")||(i1!=="Pepperoni")||(i1!=="Pavo")||(i1!=="Salchicha")||(i1!=="Aceituna")||(i1!=="Cebolla")||(i1!=="Pimiento")||(i1!=="Piña")||(i1!=="Anchoa")||(i1!=="Atún")||(i1!=="Champiñones")||(i1!=="Huevo")||(i1!=="Bacon")||(i1!=="")){
            mensajeUno.text = "\(i1!)"
        }else{
            mensajeUno.text = "No válido"
        }
        if ((i2!=="jamón")||(i2!=="Pepperoni")||(i2!=="Pavo")||(i2!=="Salchicha")||(i2!=="Aceituna")||(i2!=="Cebolla")||(i2!=="Pimiento")||(i2!=="Piña")||(i2!=="Anchoa")||(i2!=="Atún")||(i2!=="Champiñones")||(i1!=="Huevo")||(i2!=="Bacon")||(i2!=="")){
            mensajeDos.text = "\(i2!)"
        }else{
            mensajeDos.text = "No válido"
        }
        if ((i3!=="jamón")||(i3!=="Pepperoni")||(i3!=="Pavo")||(i3!=="Salchicha")||(i3!=="Aceituna")||(i3!=="Cebolla")||(i3!=="Pimiento")||(i3!=="Piña")||(i3!=="Anchoa")||(i3!=="Atún")||(i3!=="Champiñones")||(i3!=="Huevo")||(i3!=="Bacon")||(i3!=="")){
            mensajeTres.text = "\(i3!)"
        }else{
            mensajeTres.text = "No válido"
        
        }

        uno.resignFirstResponder()
        dos.resignFirstResponder()
        tres.resignFirstResponder()
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func GuardarIn(_ sender: Any) {
        let i1:String?
        i1 = self.uno.text!
        let i2:String?
        i2 = self.dos.text!
        let i3:String?
        i3 = self.tres.text!
       
        print ("Ingredientes: \(i1), \(i2), \(i3)")

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let i1:String?
        i1 = self.uno.text!
        let i2:String?
        i2 = self.dos.text!
        let i3:String?
        i3 = self.tres.text!
        let sigVista = segue.destination as! Final
        sigVista.mas = mas
        sigVista.tam = tam
        sigVista.que = que
        sigVista.uno = i1
        sigVista.dos = i2
        sigVista.tres = i3
        
        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
     
    */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let i1:String?
        i1 = self.uno.text!
        let i2:String?
        i2 = self.dos.text!
        let i3:String?
        i3 = self.tres.text!
        if ((i1!=="jamón")||(i1!=="pepperoni")||(i1!=="pavo")||(i1!=="salchicha")||(i1!=="aceituna")||(i1!=="cebolla")||(i1!=="pimiento")||(i1!=="piña")||(i1!=="anchoa")||(i1!=="atún")||(i1!=="champiñones")||(i1!=="huevo")||(i1!=="bacon")||(i1!=="")){
            mensajeUno.text = "\(i1!)"
        }else{
            mensajeUno.text = "No válido"
        }
        if ((i2!=="jamón")||(i2!=="pepperoni")||(i2!=="pavo")||(i2!=="salchicha")||(i2!=="aceituna")||(i2!=="cebolla")||(i2!=="pimiento")||(i2!=="piña")||(i2!=="anchoa")||(i2!=="atún")||(i2!=="champiñones")||(i1!=="huevo")||(i2!=="bacon")||(i2!=="")){
            mensajeDos.text = "\(i2!)"
        }else{
            mensajeDos.text = "No válido"
        }
        if ((i3!=="jamón")||(i3!=="pepperoni")||(i3!=="pavo")||(i3!=="salchicha")||(i3!=="aceituna")||(i3!=="cebolla")||(i3!=="pimiento")||(i3!=="piña")||(i3!=="anchoa")||(i3!=="atún")||(i3!=="champiñones")||(i3!=="huevo")||(i3!=="bacon")||(i3!=="")){
            mensajeTres.text = "\(i3!)"
        }else{
            mensajeTres.text = "No válido"
    
        }
        
        self.view.endEditing(true)
        return false
    }

}
