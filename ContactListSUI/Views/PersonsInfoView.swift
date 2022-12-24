//
//  PersonsInfoView.swift
//  ContactListSUI
//
//  Created by Alexander Grishin on 24.12.2022.
//

import SwiftUI

struct PersonsInfoView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            HStack {
                Image(systemName: "phone")
                Text(person.phone)
            }
            HStack {
                Image(systemName: "envelope")
                Text(person.email)
            }
        }
        .navigationTitle(person.fullName)
    }
}

struct PersonsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsInfoView(person: Person.getPersonList()[0])
    }
}
