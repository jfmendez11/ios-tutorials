//
//  ContentView.swift
//  Dicee UI
//
//  Created by Juan Felipe Méndez on 30/06/20.
//  Copyright © 2020 Juan Felipe Méndez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rigthDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                
                Spacer()
                
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rigthDiceNumber)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rigthDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
