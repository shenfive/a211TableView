//
//  ViewController.swift
//  a211TableView
//
//  Created by 申潤五 on 2020/11/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var theTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        theTableView.dataSource = self
        theTableView.delegate = self
    }


    //MARK:TableView DataSource & Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = UIColor.red
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    
}

