//
//  ContentView.swift
//  TravelDiscoverSwiftUI
//
//  Created by DataBunker on 13/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                DiscoveryView()
                PopularDestinationView()
                PopularResturantView()
                TrendingCreators()
                .navigationBarTitle("Discover")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
