//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Lera Savchenko on 30.10.23.
//

import Foundation

struct Person: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let emails = DataStore.shared.emails.shuffled()
                
        for index in 0..<names.count {
            let person = Person(
                id: index + 1,
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
