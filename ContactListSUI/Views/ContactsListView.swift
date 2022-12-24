//
//  ExtendedContactsView.swift
//  ContactListSUI
//
//  Created by Alexander Grishin on 24.12.2022.
//

import SwiftUI

struct ContactsListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts, id: \.self) { contact in
                Section(contact.fullName) {
                    ExtendedContactRowView(image: "phone.fill", contactInfo: contact.phone)
                    ExtendedContactRowView(image: "mail.fill", contactInfo: contact.email)
                }
            }
            .navigationTitle("Contacts")
            .listStyle(.plain)
        }
    }
}

struct ExtendedContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView(contacts: Person.getPersonList())
    }
}
