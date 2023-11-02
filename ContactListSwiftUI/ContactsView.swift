//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Lera Savchenko on 30.10.23.
//

import SwiftUI

struct ContactsView: View {
    var contactList: [Person]
    
    var body: some View {
        List (contactList, id: \.self) { contact in
            Text("\(contact.fullName)")
        }
        .navigationTitle("Contact List")
        .listStyle(.plain)
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contactList: Person.getContactList())
    }
}
