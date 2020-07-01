//
//  ContentView.swift
//  H4X0R News
//
//  Created by Juan Felipe Méndez on 30/06/20.
//  Copyright © 2020 Juan Felipe Méndez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}

//struct Post: Identifiable {
//    let id: String
//    let title: String
//}

//let posts = [Post(id: "1", title: "Millos"), Post(id: "2", title: "Tú"), Post(id: "3", title: "Papá")]
