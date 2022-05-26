//
//  DataManager.swift
//  Contacts_SwiftUI
//
//  Created by Евгения Шевцова on 26.05.2022.
//


class DataManager: Identifiable {
    
    static let dataManager = DataManager()
    
    let names: [String] = ["Alex", "David", "Olesya", "Anna"]
    let surnames: [String] = ["Fomich", "Ivanovich", "Sidor", "Pirovich"]
    let emails: [String] = ["foma@gmail.com", "hope@yandex.ru", "lol@mail.ru", "tratata@gmail.com"]
    let phoneNumbers: [String] = ["87124562387", "89805623465", "89276534576", "89126324672"]
    
    private init() {}
}

