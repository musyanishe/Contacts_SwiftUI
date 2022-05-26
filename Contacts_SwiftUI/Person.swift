//
//  Person.swift
//  Contacts_SwiftUI
//
//  Created by Евгения Шевцова on 26.05.2022.
//

import SwiftUI

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var title: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsInfo() -> [Person] {
        let personManager = DataManager.dataManager
        var persons: [Person] = []
        
        let names = personManager.names.shuffled()
        let surnames = personManager.surnames.shuffled()
        let emails = personManager.emails.shuffled()
        let phones = personManager.phoneNumbers.shuffled()
        let personInfo = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0..<personInfo {
        let person = Person(
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

