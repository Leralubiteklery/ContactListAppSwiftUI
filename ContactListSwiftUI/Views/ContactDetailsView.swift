//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Lera Savchenko on 30.10.23.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 180, height: 180)
                    .padding()
                Spacer()
            }
            
            Label(contact.phone, systemImage: "phone")
            Label(contact.email, systemImage: "tray")
        }
        .navigationBarTitle(contact.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Person.getContactList().first!)
    }
}
