//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Lera Savchenko on 30.10.23.
//

import SwiftUI

struct ContactsView: View {
    let contactList: [Person]
    
    var body: some View {
        NavigationStack {
            List (contactList) { contact in
                NavigationLink (
                    contact.fullName,
                    destination: ContactDetailsView(contact: contact)
                )
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        .listStyle(.plain)
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contactList: Person.getContactList())
    }
}
