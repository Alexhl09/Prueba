//
//  Final.swift
//  Crear Pizza
//
//  Created by Alejandro on 08/01/17.
//  Copyright © 2017 Alejandro. All rights reserved.
//

import UIKit

class Final: UIViewController {

   
    @IBOutlet weak var pedido: UILabel!
  
  
   
    
    @IBOutlet weak var realizar: UIButton!
    var tam:String?
    var mas:String?
    var que:String?
    var uno:String?
    var dos:String?
    var tres:String?
    
        
        
    
          func ViewDidLoad() {
        super.viewDidLoad()
  

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        pedido.text = "Tamaño: \(tam!) Masa: \(mas!) Queso: \(que!) Ingredientes: \(uno!) \(dos!) \(tres!)"
        if ((tam!=="")||(mas!=="")||(que!=="")) {
            pedido.text = "No se puede realizar el pedido"
            realizar.isEnabled=false
        }
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
