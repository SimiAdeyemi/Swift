//
//  ViewController.swift
//  Multiplication Table
//
//  Created by Adeyemi, Similoluwa on 16/12/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        multiTable.isHidden = true
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
              var content = UIListContentConfiguration.cell()
              
              if (indexPath.section == 0){
                  content.text = "\(indexPath.row + 1) x \(inputNum ?? 0) = \((indexPath.row + 1) * (inputNum ?? 0))"
              } else {
                  let result = Double(inputNum ?? 0) / Double((indexPath.row + 1))
                  content.text = "\(inputNum ?? 0) / \(indexPath.row + 1) = \(String(format: "%.4f", result))"
              }
              
              Cell.contentConfiguration = content
              return Cell
    }
    

    var inputNum: Int?
    

    
    @IBOutlet weak var numField: UITextField!
    
    @IBOutlet weak var multiTable: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
         return 2
     }
     
    @IBAction func goButton(_ sender: Any) {
        inputNum = Int(numField.text!)
        multiTable.reloadData()
        numField.resignFirstResponder()
        multiTable.isHidden = false
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
          let allowedCharacters = CharacterSet.decimalDigits
          let characterSet = CharacterSet(charactersIn: string)
          return allowedCharacters.isSuperset(of: characterSet)
      }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        numField.delegate = self
        // Do any additional setup after loading the view.
    }


}

