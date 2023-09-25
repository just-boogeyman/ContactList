//
//  ViewController.swift
//  ContactList
//
//  Created by Ярослав Кочкин on 24.09.2023.
//

import UIKit

class PersonViewController: UITableViewController {
    
    var persons: [Persone]! = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
    }
}


extension PersonViewController {
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        content.image = UIImage(named: "person")
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "goToDetail", sender: person)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? DetailViewController
        detailsVC?.persone = sender as? Persone
    }
}
