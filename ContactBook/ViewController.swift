//
//  ViewController.swift
//  ContactBook
//
//  Created by Saltanat Nareshova on 09.02.2021.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    var contacts = [Contact.init("Nareshova Saltanat", "87025167611", UIImage.init(named: "female")!),
                    Contact.init("Someone Person", "877771237685", UIImage.init(named: "male")!)]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            contacts.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
            as? CustomCellTableViewCell
        cell?.contactName.text = contacts[indexPath.row].nameSurname
        cell?.contactNumber.text = contacts[indexPath.row].number
        cell?.contactImageView.image = contacts[indexPath.row].image
        return cell!
    }
    
    
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = (myTableView.indexPathForSelectedRow?.row)!
        let destination = segue.destination as! DetailViewController
        destination.nameSurname = contacts[index].nameSurname
        destination.number = contacts[index].number
    }

}

