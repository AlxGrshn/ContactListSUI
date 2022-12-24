//
//  ContentView.swift
//  ContactListSUI
//
//  Created by Alexander Grishin on 24.12.2022.
//

import SwiftUI

struct ContentView: View {
    private let contacts = Person.getPersonList()
    
    var body: some View {
        TabView {
            PersonsListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Persons")
                }
            
            ContactsListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person")
                    Text("Contacts")
                }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
