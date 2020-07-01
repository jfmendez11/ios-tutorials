//
//  ContentView.swift
//  JuanFelipeCard
//
//  Created by Juan Felipe Méndez on 30/06/20.
//  Copyright © 2020 Juan Felipe Méndez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    Image("jfm_at_psg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200.0, height: 200.0)
                        .clipShape(Circle())
                    Circle()
                        .stroke(Color(red: 0.56, green: 0.79, blue: 0.98), lineWidth: 3)
                        .frame(width: 210.0, height: 210.0)
                }
                
                
                Text("Juan Felipe Méndez Peralta")
                    .font(Font.custom("RobotoMono-Medium", size: 25))
                    .bold()
                    .foregroundColor(Color(red: 0.56, green: 0.79, blue: 0.98))
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(Color(red: 0.56, green: 0.79, blue: 0.98))
                
                Divider()
                
                InfoView(text: "+57 318 782 5721", imageName: "phone.circle")
                InfoView(text: "mendezjuanfelipe7@gmail.com", imageName: "envelope.circle")
                InfoView(text: "jfmendez11.github.io", imageName: "globe")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
