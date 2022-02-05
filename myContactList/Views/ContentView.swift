//
//  ContentView.swift
//  myContactList
//
//  Created by Alisa Ts on 05.02.2022.
//

import SwiftUI

struct ContentView: View {
    private var person = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactList(personsList: person)
                .tabItem {
                    Image(systemName: Contacts.person.rawValue)
                    Text("Contacts")
                }
            ContactListSection(personsList: person)
                .tabItem {
                    Image(systemName: Contacts.phone.rawValue)
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
