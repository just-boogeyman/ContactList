//
//  ContactViewController.swift
//  ContactList
//
//  Created by Ярослав Кочкин on 25.09.2023.
//

import UIKit

class PersonDeteilViewController: UITableViewController {
    
    var persons: [Persone]!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
    }
}


extension PersonDeteilViewController {
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = indexPath.row == 0
        ? person.phone
        : person.email
        
        content.image = indexPath.row == 0
        ? UIImage(named: "phone")
        : UIImage(named: "email")
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
