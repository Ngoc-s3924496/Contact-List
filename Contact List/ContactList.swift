//
//  ContactList.swift
//  Contact List
//
//  Created by Duong Vu Thanh Ngoc on 25/07/2023.
//

import SwiftUI

struct ContactList: View {
    var body: some View {
        NavigationView {
            List(contacts) {
                contact in NavigationLink{
                    ContactCard(contact: contact)
                } label: {
                    ContactRow(contact: contact)
                }.navigationTitle("Contact List")
            }
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
