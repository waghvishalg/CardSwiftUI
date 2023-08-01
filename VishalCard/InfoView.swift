//
//  InfoView.swift
//  VishalCard
//
//  Created by Vishal Wagh on 01/08/23.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        Rectangle()
            .frame(height: 50)
            .cornerRadius(25)
            .foregroundColor(.white)
            .overlay {
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                }
            }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "photo.fill")
            .previewLayout(.sizeThatFits)
    }
}
