//
//  ConatactListSection.swift
//  myContactList
//
//  Created by Alisa Ts on 05.02.2022.
//

import SwiftUI

struct ContactListSection: View {
    
    let personsList: [Person]
    
    var body: some View {
        NavigationView {
            List(personsList) { person in
                Section {
                    InfoPerson(image: Contacts.phone.rawValue,
                               text: person.phoneNumber)
                    InfoPerson(image: Contacts.email.rawValue,
                               text: person.email)
                } header: {
                    Text("\(person.fullName)")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}
struct ConatactListSection_Previews: PreviewProvider {
    static var previews: some View {
        ContactListSection(personsList: Person.getContactList())
    }
}
