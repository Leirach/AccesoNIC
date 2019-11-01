//
//  DependienteViewController.swift
//  Acceso NIC prototipo
//
//  Created by Juan De Leon on 10/31/19.
//  Copyright © 2019 Juan De Leon. All rights reserved.
//

import UIKit

class DependienteViewController: UIViewController {

    @IBOutlet weak var tycswitch: UISwitch!
    @IBOutlet weak var tyclabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func mostrarTyC(_ sender: UISwitch) {
        tyclabel.isHidden = !sender.isOn
        tycswitch.isHidden = !sender.isOn
    }

    @IBAction func clearView(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func menuguardar(_ sender: Any) {
        let alert = UIAlertController(title: "¿Guardar dependiente?", message: "Se guardarán datos del dependiente", preferredStyle: .alert)
        
        let guardar = UIAlertAction(title: "Guardar", style: .default, handler: {_ in
            CATransaction.setCompletionBlock({
                self.performSegue(withIdentifier: "seg", sender: nil)
            })
        })
        let noguardar = UIAlertAction(title: "No guardar", style: .default, handler: {_ in
            CATransaction.setCompletionBlock({
                self.performSegue(withIdentifier: "seg", sender: nil)
            })
        })
        
        alert.addAction(guardar)
        alert.addAction(noguardar)
        
        self.present(alert, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
