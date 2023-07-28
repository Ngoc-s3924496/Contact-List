//
//  InfoView.swift
//  Contact List
//
//  Created by Duong Vu Thanh Ngoc on 25/07/2023.
//

import SwiftUI

struct InfoView: View {
    var text: String
    var imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color("rmit-red"))
                Text(text)
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .bold()
            })
            .padding(.all)
    }
}
