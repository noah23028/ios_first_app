//
//  SwiftUIView.swift
//  ios_first_app
//
//  Created by Morris, Noah L (morri095) on 2/15/24.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            .font(.footnote)
            .kerning(2.0)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("TextColor"))
    }
}
struct BigNumberText: View {
    var text: String
    var body: some View {
        Text (text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}
#Preview {
    VStack{
        InstructionText(text: "Instructions")
        BigNumberText(text: "999")
    }
}
