//
//  NumbersView.swift
//  Contacts_SwiftUI
//
//  Created by Евгения Шевцова on 26.05.2022.
//

import SwiftUI

struct NumbersView: View {
    let numbers = Person.getPersonsInfo()
    
    var body: some View {
        NavigationView {
            List(numbers) { number in
                Section(header: Text(number.title)) {
                    ContactInfoRowView(image: "envelope", contactInfo: number.email)
                    ContactInfoRowView(image: "phone", contactInfo: number.phone)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
