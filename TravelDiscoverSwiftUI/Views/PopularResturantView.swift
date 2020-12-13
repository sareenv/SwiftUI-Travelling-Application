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
                        HStack(spacing: 13) {
                            Image("tapas")
                                .resizable()
                                .frame(width: 64, height: 64)
                                .background(Color.gray)
                                .padding(.horizontal, 6)
                                .padding(.top, 6)
                                .padding(.bottom, 6)
                            VStack(alignment: .leading) {
                                Text("Japans Finest Tapas")
                                
                                HStack {
                                    Image(systemName: "star.fill")
                                    Text("4.7 • Sushi • $$")
                                }
                                

                                Text("Tokyo, Japan")
                            }.font(.system(size: 12, weight: .semibold))
                            
                        }
                            .frame(width: 240)
                        .background(Color(.init(white: 0.9, alpha: 1)))
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
