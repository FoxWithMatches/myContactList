//
//  DetailsContactView.swift
//  myContactList
//
//  Created by Alisa Ts on 05.02.2022.
//

import SwiftUI

struct DetailsContactView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: Contacts.person.rawValue)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            InfoPerson(image: Contacts.phone.rawValue,
                       text: person.phoneNumber)
            InfoPerson(image: Contacts.email.rawValue,
                       text: person.email)
        }
        .navigationTitle("\(person.fullName)")
    }
}

struct DetailsContactView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsContactView(person: Person.getContactList().first!)
    }
}
