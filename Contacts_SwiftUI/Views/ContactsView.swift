//
//  ContactsView.swift
//  Contacts_SwiftUI
//
//  Created by Евгения Шевцова on 26.05.2022.
//

import SwiftUI

struct ContactsView: View {
    let contacts = Person.getPersonsInfo()
    
    var body: some View {
        NavigationView{
            List(contacts) { person in
                NavigationLink(
                    person.title,
                    destination: ContactInfoView(person: person)
                )
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
