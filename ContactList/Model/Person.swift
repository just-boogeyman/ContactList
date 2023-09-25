//
//  Person.swift
//  ContactList
//
//  Created by Ярослав Кочкин on 24.09.2023.
//

import Foundation


struct Persone {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    var fullName: String {
        "\(name)  \(surname)"
    }
    
    static func getPersons() -> [Persone] {
        let name = DataStore.shared.names.shuffled()
        let surname = DataStore.shared.surnames.shuffled()
        let email = DataStore.shared.email.shuffled()
        let phone = DataStore.shared.phone.shuffled()
        
        var persons: [Persone] = []
                
        for index in 0..<name.count {
            persons.append(
                Persone(
                    name: name[index],
                    surname: surname[index],
                    email: email[index],
                    phone: phone[index]
                )
            )
        }
        return persons
    }
}
