//
//  Person.swift
//  ContactListSUI
//
//  Created by Alexander Grishin on 24.12.2022.
//

import Foundation

struct Person: Hashable {
    let name: String
    let surName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surName)"
    }
    
    static func getPersonList() -> [Person] {
        var personsList: [Person] = []
        
        let names = DataStorage.shared.names.shuffled()
        let surnames = DataStorage.shared.surnames.shuffled()
        let phones = DataStorage.shared.phoneNumbers.shuffled()
        let emails = DataStorage.shared.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surName: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
            personsList.append(person)
        }
        return personsList
    }
}
