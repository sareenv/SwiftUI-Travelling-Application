//
//  TrendingCreators.swift
//  TravelDiscoverSwiftUI
//
//  Created by DataBunker on 14/12/2020.
//

import SwiftUI

struct TrendingCreators: View {
    var body: some View {
        
        VStack {
            HStack {
                Text("Trending Creator")
                    .font(.system(size: 15, weight: .semibold))
                Spacer()
                Text("See All")
                    .font(.system(size: 15, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            
            ScrollView(.horizontal) {

                HStack(spacing: 8) {
                    
                    ForEach(0..<5 ,id: \.self) { _ in
                        VStack {
                            Spacer()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.gray)
                                .cornerRadius(.infinity)
                                .shadow(color: .gray, radius: 3, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
                        }
                    }
                }
            
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
        
        
    }
}

struct TrendingCreators_Previews: PreviewProvider {
    static var previews: some View {
        TrendingCreators()
    }
}
