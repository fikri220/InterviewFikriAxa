//
//  DetailViewController.swift
//  InterviewFikri
//
//  Created by Fikri Ihsan on 06/03/24.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var userIdLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    
    var data : UserData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userIdLabel.text = String(format: "UserID : %ld", data?.userId ?? "")
        idLabel.text = String(format: "ID : %ld", data?.id ?? "")
        titleLabel.text = String(format: "Title : %@", data?.title ?? "")
        bodyLabel.text = String(format: "Body : %@", data?.body ?? "")
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
