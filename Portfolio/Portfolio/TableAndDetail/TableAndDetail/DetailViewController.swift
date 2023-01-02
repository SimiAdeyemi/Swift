//
//  DetailViewController.swift
//  TableAndDetail
//
//  Created by Adeyemi, Similoluwa on 15/12/2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var lecturerName: String = ""
    var room: String = ""
    var email: String = ""

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var roomLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = lecturerName
        roomLabel.text = room
        emailLabel.text = email
        
        // Do any additional setup after loading the view.
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
