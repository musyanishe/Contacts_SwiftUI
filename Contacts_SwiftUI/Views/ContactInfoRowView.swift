//
//  ContactInfoRowView.swift
//  Contacts_SwiftUI
//
//  Created by Евгения Шевцова on 26.05.2022.
//

import SwiftUI

struct ContactInfoRowView: View {
    let image: String
    let contactInfo: String
    
    var body: some View {
        HStack{
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(contactInfo)
        }.padding()
    }
}

struct ContactInfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoRowView(image: "envelope", contactInfo: Person.getPersonsInfo().first?.email ?? "")
    }
}
