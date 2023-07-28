//
//  Contact.swift
//  Contact List
//
//  Created by Duong Vu Thanh Ngoc on 25/07/2023.
//

import SwiftUI
import CoreLocation

struct Contact: Identifiable{
    var id = UUID()
    var name: String
    var email: String
    var phone: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D
}
