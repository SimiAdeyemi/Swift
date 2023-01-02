//
//  ViewController.swift
//  TableAndDetail
//
//  Created by Adeyemi, Similoluwa on 15/12/2022.
//

import UIKit

var selectedPerson = ("","","")

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var staff =
    [("Phil","A1.20","phil@liverpool.ac.uk"),("Terry","A2.18","trp@liverpool.ac.uk"),("Valli","A2.12","V.Tamma@liverpool.ac.uk"),("Boris","A1.15","Konev@liverpool.ac.uk")]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return staff.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        var content = UIListContentConfiguration.cell()
        (content.text,_,_) = staff[indexPath.row]
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            staff.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! DetailViewController
        dvc.lecturerName = selectedPerson.0
        dvc.room = selectedPerson.1
        dvc.email = selectedPerson.2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPerson = staff[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: nil)
    }

    @IBAction func unwindToFirstVc(_ unwindSegue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

