//
//  CircleImage.swift
//  Contact List
//
//  Created by Duong Vu Thanh Ngoc on 25/07/2023.
//

import SwiftUI

struct CỉcleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color(.white), lineWidth: 2))
            .shadow(radius: 7)
            .frame(width: 180, height: 180)
        
    }
}
