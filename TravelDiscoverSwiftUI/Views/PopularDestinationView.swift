//
//  PopularViews.swift
//  TravelDiscoverSwiftUI
//
//  Created by DataBunker on 14/12/2020.
//

import SwiftUI

struct PopularDestinationView: View {
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
                    ForEach(0..<5, id: \.self) { _ in
                        Spacer()
                            .frame(width: 125, height: 150, alignment: .leading)
                            .background(Color.gray)
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
