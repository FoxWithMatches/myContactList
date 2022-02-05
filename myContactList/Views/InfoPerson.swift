//
//  InfoPerson.swift
//  myContactList
//
//  Created by Alisa Ts on 05.02.2022.
//

import SwiftUI

struct InfoPerson: View {
    let image: String
    let text: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct InfoPerson_Previews: PreviewProvider {
    static var previews: some View {
        InfoPerson(image: Contacts.email.rawValue, text: Person.getContactList().first!.email)
    }
}
