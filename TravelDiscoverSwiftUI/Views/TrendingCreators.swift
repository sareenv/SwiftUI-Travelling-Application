//
//  TrendingCreators.swift
//  TravelDiscoverSwiftUI
//
//  Created by DataBunker on 14/12/2020.
//

import SwiftUI

struct TrendingCreators: View {
    
    let creators: [Creator] = [
        .init(name: "Ammy", lastName: "Adams", imageName: "sam"),
        .init(name: "Sam", lastName: "Smith", imageName: "billy"),
        .init(name: "Billy", lastName: "Childs", imageName: "amy")
    ]
    
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
                    
                    ForEach(creators ,id: \.self) { creator in
                        VStack {
                            Image("\(creator.imageName)")
                                .resizable()
                                .aspectRatio(contentMode: .fill
                                )
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.gray)
                                .cornerRadius(25)
                                .shadow(color: .gray, radius: 3, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
                            Text("\(creator.name)")
                                .font(.system(size: 14, weight: .medium))
                            Text("\(creator.lastName)")
                                .font(.system(size: 14, weight: .medium))
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
