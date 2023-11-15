//
//  InfoCard.swift
//  ContactCard
//
//  Created by Abhishek Jadaun on 16/11/23.
//

import SwiftUI

struct InfoCard: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
                .foregroundColor(Color("InfoTextColor"))
            })
            .padding(.all)
    }
}


struct InfoCard_Previews: PreviewProvider {
    static var previews: some View {
        InfoCard(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
