//
//  ContactRow.swift
//  Contact List
//
//  Created by Duong Vu Thanh Ngoc on 25/07/2023.
//

import SwiftUI
struct ContactRow: View {
    var contact: Contact
    
    var body: some View {
        HStack {
            contact.image
                .resizable()
                .frame(width:50,height:50)
            Text(contact.name)
        }
    }
}
