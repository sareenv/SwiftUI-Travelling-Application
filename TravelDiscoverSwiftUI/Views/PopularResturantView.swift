//
//  PopularResturantView.swift
//  TravelDiscoverSwiftUI
//
//  Created by DataBunker on 14/12/2020.
//

import SwiftUI


struct PopularResturantView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Popular places to eat")
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
                            .frame(width: 220, height: 80, alignment: .leading)
                            .background(Color.gray)
                            .cornerRadius(4)
                    }
                }
                .padding(.horizontal)
            }
            
        }
    }
}

struct PopularResturantView_Previews: PreviewProvider {
    static var previews: some View {
        PopularResturantView()
    }
}
