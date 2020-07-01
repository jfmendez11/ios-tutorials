//
//  InfoView.swift
//  JuanFelipeCard
//
//  Created by Juan Felipe Méndez on 30/06/20.
//  Copyright © 2020 Juan Felipe Méndez. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color(red: 0.26, green: 0.26, blue: 0.26))
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(Color(red: 0.56, green: 0.79, blue: 0.98))
                Text(text)
                .foregroundColor(Color(red: 0.93, green: 0.93, blue: 0.93))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
