//
//  NubmersView.swift
//  ContactListSwiftUI
//
//  Created by Lera Savchenko on 30.10.23.
//

import SwiftUI

struct NubmersView: View {
    var contactList: [Person]
    
    var body: some View {
        List (contactList, id: \.self) { contact in
            Text("\(contact.fullName)")
        }
        .navigationTitle("Contact List")
        .listStyle(.plain)
    }
}

struct NubmersView_Previews: PreviewProvider {
    static var previews: some View {
        NubmersView(contactList: Person.getContactList())
    }
}
