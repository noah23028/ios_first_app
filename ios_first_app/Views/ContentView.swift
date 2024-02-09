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
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .font(.footnote)
                .kerning(2.0)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text (String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack{
                Text ("1")
                Slider(value: $sliderValue, in: 1...100)
                    .padding(0.0)
                Text("100")
                    .bold()
            }
            Button("Hit me") {
                alertIsVisible = true
                print("slide is \(sliderValue)")
            }
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
                }
                )
        }
    }
}
        struct ContentView_Previews:
            PreviewProvider{
            static var previews: some View {
                ContentView()
        }
}

