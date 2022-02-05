//
//  HomeScreen.swift
//  myContactList
//
//  Created by Alisa Ts on 05.02.2022.
//

import SwiftUI

struct ContactList: View {
    
    let personsList: [Person]
    
    var body: some View {
        NavigationView {
            List(personsList) { person in
                NavigationLink(destination: DetailsContactView(person: person)) {
                    Text("\(person.fullName)")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(personsList: Person.getContactList())
    }
}
