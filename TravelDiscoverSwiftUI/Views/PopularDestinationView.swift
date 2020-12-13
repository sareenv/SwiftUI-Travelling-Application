//
//  PopularViews.swift
//  TravelDiscoverSwiftUI
//
//  Created by DataBunker on 14/12/2020.
//

import SwiftUI

struct PopularDestinationView: View {
    
    let popularDestinations: [Destination] = [
        .init(country: "France", city: "Paris", imageName: "paris"),
        .init(country: "Japan", city: "Tokyo", imageName: "tokyo"),
        .init(country: "New York", city: "US", imageName: "newyork")
    ]
 
    var body: some View {
        VStack {
            HStack {
                Text("Popular Destination")
                    .font(.system(size: 15, weight: .semibold))
                Spacer()
                Text("See All")
                    .font(.system(size: 15, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal) {
                HStack(spacing: 8) {
                    ForEach(popularDestinations, id: \.self) { destination in
                        VStack(alignment: .leading) {
                            Image("\(destination.imageName)")
                                .resizable()
                                .scaledToFill()
                            Spacer()
                            Text("\(destination.city)")
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 12)
                            Text("\(destination.country)")
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 12)
                                .foregroundColor(Color.gray)
                                .padding(.bottom, 8)
                        }
                        .frame(width: 125, height: 150, alignment: .leading)
                        .background(Color(.init(white: 0.9, alpha: 1)))
                        .cornerRadius(4)
                    }
                }
                .padding(.horizontal)
            }
            
        }
    }
}


struct PopularViews_Previews: PreviewProvider {
    static var previews: some View {
        PopularDestinationView()
    }
}
