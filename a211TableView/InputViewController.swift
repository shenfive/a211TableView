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
    @IBAction func newPhoneAction(_ sender: Any) {
//        guard let name = nameTF.text else {
//            return
//        }
        let name = nameTF.text ?? ""
        let phoen = phoneTF.text ?? ""
        
        //檢查名子
        if name.count < 2 {
            let alert = UIAlertController(title: "", message: "請輸入兩個以上字元的名子", preferredStyle: .alert)
            let okBut = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okBut)
            present(alert, animated: true, completion: nil)
            return
        }
        
        
        
        
    }
    
}
