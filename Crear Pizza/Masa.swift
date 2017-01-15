//
//  Masa.swift
//  Crear Pizza
//
//  Created by Alejandro on 08/01/17.
//  Copyright © 2017 Alejandro. All rights reserved.
//

import UIKit

class Masa: UIViewController , UITextFieldDelegate {
    

 
   
    @IBOutlet weak var mensaje: UILabel!
    
    @IBOutlet weak var mas: UITextField!
   
     var tam:String?
    override func viewDidLoad() {
        
        super.viewDidLoad()
         mas.delegate = self

        // Do any additional setup after loading the view.
    }
    
   
    
    @IBAction  func textFieldDoneEditing ( sender : UITextField){
        sender.resignFirstResponder()
    }
    
    @IBAction  func backgroundTap ( sender : UIControl)
    {
        let base:String?
        base = self.mas.text!
        if ((base!=="Delgada")||(base!=="Crujiente")||(base!=="Gruesa")){
            mensaje.text = "Masa: \(base!)"
        }else{
            mensaje.text = "Masa no válida"
        }
        mas.resignFirstResponder()
        
    }
    


    @IBAction func guardarMasa(_ sender: Any) {
        let base:String?
        base = self.mas.text!
        print ("Tipo de masa \(base)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let base:String?
        base=self.mas.text!
        let sigVista = segue.destination as! Queso
          sigVista.mas = base
            sigVista.tam = tam
      
       
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let base:String?
        base = self.mas.text!
        if ((base!=="Delgada")||(base!=="Crujiente")||(base!=="Gruesa")){
            mensaje.text = "Masa: \(base!)"
        }else{
            mensaje.text = "Masa no válida"
        }
        
        self.view.endEditing(true)
        return false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
