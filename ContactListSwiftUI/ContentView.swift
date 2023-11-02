//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Lera Savchenko on 30.10.23.
//

import SwiftUI

struct ContentView: View {
    let contactList = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsView(contactList: contactList)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            NubmersView(contactList: contactList)
                .tabItem {
                    Image(systemName: "phone")
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
