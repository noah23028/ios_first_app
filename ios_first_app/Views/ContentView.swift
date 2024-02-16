//
//  ContentView.swift
//  ios_first_app
//
//  Created by Morris, Noah L (morri095) on 2/1/24.
//

import SwiftUI

struct ContentView: View {
    //eliminate : = to simplify automatic type casing
    @State private var alertIsVisible = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    var body: some View {
        VStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            InstructionsViews(game: $game)
            HStack{
                Text ("1")
                Slider(value: $sliderValue, in: 1...100)
                    .padding(0.0)
                Text("100")
                    .bold()
                    .foregroundColor(Color("TextColor"))
            } .padding()
            Button(action: {
                alertIsVisible = true
                print("slide is \(sliderValue)")
            }) {
                Text("Hit me".uppercased())
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("TextColor"))
                    
            }
            .padding(20)
            .background(
            ZStack{
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            } )
                .foregroundColor(.white)
                .cornerRadius(21)
            .alert(
                "Hello There",
                isPresented: $alertIsVisible,
                actions: {
                    Button("Awesome") {
                        print("Alert Closed")
                    }
                    },
                message: {
                    let roundedValue: Int = Int(sliderValue.rounded())
                    Text("""
                         The slider's Value is \(roundedValue).
                         You scored \(game.points(sliderValue: roundedValue)) this round.
                         """)
                })
        }
        .background(Color("BackgroundColor"))
    }
}
struct InstructionsViews :View {
    @Binding var game: Game
    var body: some View {
        VStack{
            InstructionText(text: "🎯🎯🎯\nput the bullseye as close as you can to")
                .padding(.leading, 30)
                .padding(.trailing,30)
            BigNumberText(text: String(game.target))
        }
    }
}
        struct ContentView_Previews:
            PreviewProvider{
            static var previews: some View {
                ContentView()
                ContentView()
                    .previewLayout(.fixed(width: 568, height: 320))
                ContentView()
                    .preferredColorScheme(.dark
                )
                ContentView()
                    .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                    .previewLayout(.fixed(width: 568, height: 320))
        }
}

