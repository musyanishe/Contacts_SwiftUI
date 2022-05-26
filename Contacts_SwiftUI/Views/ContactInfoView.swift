//
//  ContactInfoView.swift
//  Contacts_SwiftUI
//
//  Created by Евгения Шевцова on 26.05.2022.
//

import SwiftUI

struct ContactInfoView: View {
    let person: Person
    
    var body: some View {
        List{
            HStack{
                Spacer()
                Image(systemName: "person.fill.questionmark")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            
            ContactInfoRowView(image: "envelope", contactInfo: person.email)
            ContactInfoRowView(image: "phone", contactInfo: person.phone)
        }
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(person: Person.getPersonsInfo().first!)
    }
}
