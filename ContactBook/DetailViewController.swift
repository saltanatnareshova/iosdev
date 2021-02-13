//
//  DetailViewController.swift
//  ContactBook
//
//  Created by Saltanat Nareshova on 09.02.2021.
//

import UIKit

class DetailViewController: UIViewController {
    var nameSurname: String?
    var number: String?
    
    @IBOutlet weak var nameSurnameLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameSurnameLabel.text = nameSurname
        numberLabel.text = number
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
