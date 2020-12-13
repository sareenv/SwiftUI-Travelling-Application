//
//  Category.swift
//  TravelDiscoverSwiftUI
//
//  Created by DataBunker on 14/12/2020.
//

import Foundation


struct Category: Hashable {
    let name, imageName: String
}

struct Creator: Hashable {
    let name, lastName, imageName: String
}

struct Destination: Hashable {
    let country, city, imageName: String
}

struct Resturant: Hashable {
    let name, imageName: String
}

