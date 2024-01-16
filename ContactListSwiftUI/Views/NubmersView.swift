//
//  NubmersView.swift
//  ContactListSwiftUI
//
//  Created by Lera Savchenko on 30.10.23.
//

import SwiftUI

struct NubmersView: View {
    
    let contactList: [Person]
    
    var body: some View {
        NavigationStack {
            List (contactList) { contact in
                Section(header: Text(contact.fullName).font(.headline)) {
                    Label(contact.phone, systemImage: "phone")
                    Label(contact.email, systemImage: "tray")
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct NubmersView_Previews: PreviewProvider {
    static var previews: some View {
        NubmersView(contactList: Person.getContactList())
    }
}
