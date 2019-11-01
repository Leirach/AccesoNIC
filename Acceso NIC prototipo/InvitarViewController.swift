//
//  InvitarViewController.swift
//  Acceso NIC prototipo
//
//  Created by Juan De Leon on 10/31/19.
//  Copyright © 2019 Juan De Leon. All rights reserved.
//

import UIKit


class InvitarViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var datepicker: UIDatePicker!
    @IBOutlet weak var fecha: UITextField!
    @IBOutlet weak var motivopicker: UIPickerView!
    @IBOutlet weak var motivotf: UITextField!
    
    let motivos = ["Junta con personal de NIC México", "Colaborador Tec", "Proveedor de servicios", "Personal", "Otro"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.motivopicker.delegate = self
        self.motivopicker.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return motivos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return motivos[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        motivotf.text = motivos[row]
    }
    
    @IBAction func esconderTodo(_ sender: UITapGestureRecognizer) {
        datepicker.isHidden = true
        motivopicker.isHidden = true
        view.endEditing(true)
    }
    
    @IBAction func seleccionarMotivo(_ sender: UIButton) {
        datepicker.isHidden = true
        motivopicker.isHidden = false
    }
    @IBAction func cambiarFecha(_ sender: UIButton) {
        datepicker.isHidden = false
        motivopicker.isHidden = true
    }
    
    @IBAction func updatefecha(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        let myString = formatter.string(from: datepicker.date)
        print(myString)
        fecha.text = myString
    }
    
    @IBAction func enviarCorreo(_ sender: UIButton) {
        let alert = UIAlertController(title: "Invitación Enviada", message: "Correo enviado exitosamente", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
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
