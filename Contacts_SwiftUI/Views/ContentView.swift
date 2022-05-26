//
//  ContentView.swift
//  Contacts_SwiftUI
//
//  Created by Евгения Шевцова on 25.05.2022.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getPersonsInfo()
    
    var body: some View {
        TabView{
            ContactsView()
                .tabItem{
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumbersView()
                .tabItem{
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
