//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Ярослав Кочкин on 25.09.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        settiots()
    }
    
    private func settiots() {
        let persons = Persone.getPersons()
        
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            if let firstVC = viewController as? PersonViewController {
                firstVC.persons = persons
            } else if let seccondVC = viewController as? PersonDeteilViewController {
                seccondVC.persons = persons
            }
        }
    }
}
