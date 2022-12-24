//
//  ExtendedContactRowView.swift
//  ContactListSUI
//
//  Created by Alexander Grishin on 24.12.2022.
//

import SwiftUI

struct ExtendedContactRowView: View {
    let image: String
    let contactInfo: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Image(systemName: image)
                Text(contactInfo)
            }
        }
    }
}

struct ExtendedContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExtendedContactRowView(image: "phone.fill", contactInfo: "email")
    }
}
