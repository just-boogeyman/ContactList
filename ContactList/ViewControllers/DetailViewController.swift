//
//  InfoViewController.swift
//  ContactList
//
//  Created by Ярослав Кочкин on 25.09.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var phoneLable: UILabel!
    @IBOutlet var emailLable: UILabel!
    
    var persone: Persone!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
    }

    private func prepareView() {
        title = persone.fullName
        phoneLable.text = "\(persone.phone)"
        emailLable.text = "\(persone.email)"
    }
}
