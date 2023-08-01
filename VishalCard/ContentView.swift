//
//  ContentView.swift
//  VishalCard
//
//  Created by Vishal Wagh on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Vishal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
                    .overlay {
                        Circle()
                            .stroke(Color.white,lineWidth: 2)
                    }
                Text("Vishal Wagh")
                    .foregroundColor(.white)
                    .bold()
                    .font(Font.custom("Pacifico-Regular", size: 30))
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(Font.system(size: 25))
                InfoView(text: "+91 9860066072", imageName: "phone.fill")
                InfoView(text: "vishalwagh@swiftui.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
