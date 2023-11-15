//
//  ContentView.swift
//  ContactCard
//
//  Created by Abhishek Jadaun on 15/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red:0.09, green:0.63, blue:0.52)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("myPhoto")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Abhishek Jadaun")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.title3)
                    .foregroundColor(.white)
                // gives a dividing line
                Divider()
                InfoCard(text: "8889365190", imageName: "phone.fill")
                InfoCard(text: "ajadaun883@email.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
