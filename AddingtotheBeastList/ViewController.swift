//
//  ViewController.swift
//  AddingtotheBeastList
//
//  Created by admin on 10/12/2021.
//

import UIKit

class ViewController: UIViewController {

    
    
    var tasksList : [String] = []
    
    @IBOutlet weak var taskTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func addBeasst(_ sender: UIButton) {
        
        let inputTask = taskTextField.text!
        tasksList.append(inputTask)
           tableView.reloadData()
           taskTextField.text = ""
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasksList.count // change to array size
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyList", for: indexPath)
              cell.textLabel?.text = tasksList[indexPath.row]
              return cell
    }
}
