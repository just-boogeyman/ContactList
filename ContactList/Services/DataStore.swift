//
//  DataStore.swift
//  ContactList
//
//  Created by Ярослав Кочкин on 24.09.2023.
//

import Foundation

// MARK: - DataStore Services

class DataStore {
    
    static let shared = DataStore()
        
    let names = [
        "John",
        "Aaron",
        "Tim",
        "Ted",
        "Steven"
    ]
    let surnames = [
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankins"
    ]
    let phone = [
        "+13979141",
        "+32179141",
        "+45379141",
        "+98279141",
        "+77779141"
    ]
    let email = [
        "Smith@mail.ru",
        "Aaron@mail.ru",
        "Tim@mail.ru",
        "Ted@mail.ru",
        "Steven@mail.ru"
    ]
}
