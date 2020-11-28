//
//  ViewController.swift
//  a211TableView
//
//  Created by 申潤五 on 2020/11/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var phoneList:[Dictionary<String,String>] = []

    @IBOutlet weak var theTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        theTableView.dataSource = self
        theTableView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
        let userDefault = UserDefaults.standard
        phoneList.removeAll()
        phoneList = (userDefault.value(forKey: "phoneList") as? [Dictionary<String,String>]) ?? []
        print(phoneList.count)
        theTableView.reloadData()
        
        
    }
    
    
    
    
    


    //MARK:TableView DataSource & Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phoneList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.backgroundColor = UIColor.red
        
        let name = phoneList[indexPath.row]["name"]
        print("name:\(name)")
        
        cell.textLabel?.text = "\(phoneList[indexPath.row]["name"]!):\(phoneList[indexPath.row]["phone"]!)"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    
}

