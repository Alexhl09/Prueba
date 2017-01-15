//
//  Queso.swift
//  Crear Pizza
//
//  Created by Alejandro on 08/01/17.
//  Copyright © 2017 Alejandro. All rights reserved.
//

import UIKit

class Queso: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mensaje: UILabel!
    @IBOutlet weak var que : UITextField!
    var tam:String?
    var mas:String?
    override func viewDidLoad() {
        super.viewDidLoad()
que.delegate=self
        // Do any additional setup after loading the view.
    }
    
 
    
    
    @IBAction  func textFieldDoneEditing ( sender : UITextField){
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundTap ( sender : UIControl)
    { let cheese:String?
        cheese = self.que.text!
        if ((cheese!=="Mozarela")||(cheese!=="Cheddar")||(cheese!=="Parmesano")||(cheese!=="Sin queso")){
            mensaje.text = "Queso: \(cheese!)"
        }else{
            mensaje.text = "Queso no válido"
        }

        que.resignFirstResponder()
        
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func guardarQ(_ sender: Any) {
        let cheese:String?
        cheese = self.que.text!
        print ("Tipo de masa \(cheese)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cheese:String?
        cheese=self.que.text!
        let sigVista = segue.destination as! Ingredientes
        sigVista.mas = mas
        sigVista.tam = tam
        sigVista.que = cheese


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let cheese:String?
        cheese = self.que.text!
        if ((cheese!=="Mozarela")||(cheese!=="Cheddar")||(cheese!=="Parmesano")||(cheese!=="Sin queso")){
            mensaje.text = "Queso: \(cheese!)"
        }else{
            mensaje.text = "Queso no válido"
        }
        
        self.view.endEditing(true)
        return false
    }

}
