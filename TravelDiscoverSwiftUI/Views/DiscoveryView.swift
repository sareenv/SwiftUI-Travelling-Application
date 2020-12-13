//
//  DiscoveryView.swift
//  TravelDiscoverSwiftUI
//
//  Created by DataBunker on 14/12/2020.
//

import SwiftUI

struct DiscoveryView: View {
    
    let categories: [Category] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sports", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "court")
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 9) {
                
                ForEach(categories, id: \.self) { category in
                    VStack {
                        Spacer()
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
                        Text("\(category.name)")
                            .font(.system(size: 15, weight: .semibold))
                    }
                }
            }

            .padding(.horizontal)
        }
    }
}


struct DiscoveryView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoveryView()
    }
}
