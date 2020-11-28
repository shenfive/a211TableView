//
//  InputViewController.swift
//  a211TableView
//
//  Created by 申潤五 on 2020/11/28.
//

import UIKit

class InputViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    @IBAction func newPhoneAction(_ sender: Any) {
        let name = nameTF.text ?? ""
        let phone = phoneTF.text ?? ""
        
        //檢查名子
        if name.count < 2 {
            let alert = UIAlertController(title: "", message: "請輸入兩個以上字元的名子", preferredStyle: .alert)
            let okBut = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okBut)
            present(alert, animated: true, completion: nil)
            return
        }
        
        //檢查電話☎️
        if phone.count < 8 {
            let alert = UIAlertController(title: "", message: "請輸入八碼以上的電話", preferredStyle: .alert)
            let okBut = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okBut)
            present(alert, animated: true, completion: nil)
            return
        }
        
        nameTF.text = ""
        phoneTF.text = ""
        
        let userDefault = UserDefaults.standard
        
        var phoneList:[Dictionary<String,String>] = (userDefault.value(forKey: "phoneList") as? [Dictionary<String,String>]) ?? []
        
        let data = ["name":name,"phone":phone]
        phoneList.append(data)
        
        
        userDefault.setValue(phoneList, forKey: "phoneList")
        userDefault.synchronize()
        
        let test = (userDefault.value(forKey: "phoneList") as? [Dictionary<String,String>]) ?? []
        print(test.count)
        
        
        
    }
    
}
