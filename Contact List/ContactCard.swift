//
//  ContactCard.swift
//  Contact List
//
//  Created by Duong Vu Thanh Ngoc on 25/07/2023.
//

import SwiftUI
import CoreLocation

struct ContactCard: View {
    var contact: Contact
    
    var body: some View {
        ZStack{
            Color("rmit-blue")
                .edgesIgnoringSafeArea(.bottom)
            ScrollView {
                
                VStack {
                    MapView(coordinate: contact.locationCoordinate)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 280)
                    CỉcleImage(image: contact.image)
                        .offset(y: -100)
                        .padding(.bottom, -100)
                    Text(contact.name)
                        .foregroundColor(.white)
                        .font(.system(size: 36))
                        .bold()
                    Image("rmit-logo-white")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 80)
                        .padding(.leading, -20.0)
                    InfoView(text: contact.email, imageName: "envelope.fill")
                    InfoView(text: contact.phone, imageName: "phone.fill")
                }
            }
            .navigationTitle(contact.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
