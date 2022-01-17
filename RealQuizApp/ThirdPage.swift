//
//  ThirdPage.swift
//  RealQuizApp
//
//  Created by Rhiannon O'Brien on 2022-01-12.
//

// Second quiz page. Four text views, four buttons linked to alerts when clicked. Vertically stacked as a whole, answers are horizontally and vertically stacked. Navigation link leads back to Home Page.

// NOTE!! - exact same code as second page, only the text is different and background image.

import SwiftUI

struct Messsage: Identifiable {
    let id = UUID()
    let text: String
}

struct ThirdPage: View {
    @State private var message: Messsage? = nil
    var body: some View {
        ZStack {
            
            Image("purplebkg")
            
            VStack(spacing: 40) {
                Text("Taylor Swift Trivia")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Sponsered by Phoebe Starnino")
                    .font(.footnote)
                VStack(spacing: 20) {
                    Text("What is her blood type?")
                        .font(.title3)
                        .fontWeight(.bold)
                    HStack(spacing: 50) {
                        Button("AB+") {
                                        self.message = Messsage(text: "Incorrect :(")
                                    }
                        Button("O-") {
                                        self.message = Messsage(text: "Incorrect :(")
                                    }
                    }
                    HStack(spacing: 50) {
                        Button("O+") {
                                        self.message = Messsage(text: "Correct! :)")
                                    }
                        Button("AB-") {
                                        self.message = Messsage(text: "Incorrect :(")
                                    }
                    }
                            }.alert(item: $message) { message in
                                Alert(
                                    title: Text(message.text),
                                    dismissButton: .cancel()
                                    // button comment
                                )
                            }
                VStack(spacing: 20) {
                    Text("Where did she meet her most recent cat?")
                        .font(.title3)
                        .fontWeight(.bold)
                    HStack(spacing: 50) {
                        Button("A shelter") {
                                        self.message = Messsage(text: "Incorrect :(")
                                    }
                        Button("The set of 'Bad Blood'") {
                                        self.message = Messsage(text: "Incorrect :(")
                                    }
                    }
                    HStack(spacing: 50) {
                        Button("On the street") {
                                        self.message = Messsage(text: "Incorrect :(")
                                    }
                        Button("The set of 'ME!'") {
                                        self.message = Messsage(text: "Correct! :)")
                                    }
                    }
                            }.alert(item: $message) { message in
                                Alert(
                                    title: Text(message.text),
                                    dismissButton: .cancel()
                                )
                            }
                VStack(spacing: 20) {
                    Text("What is her favourite food?")
                        .font(.title3)
                        .fontWeight(.bold)
                    HStack(spacing: 50) {
                        Button("Chicken fingers") {
                                        self.message = Messsage(text: "Correct! :)")
                                    }
                        Button("French Fries") {
                                        self.message = Messsage(text: "Incorrect :(")
                                    }
                    }
                    HStack(spacing: 50) {
                        Button("Ribs") {
                                        self.message = Messsage(text: "Incorrect :(")
                                    }
                        Button("Caeser Salad") {
                                        self.message = Messsage(text: "Incorrect :(")
                                    }
                    }
                            }.alert(item: $message) { message in
                                Alert(
                                    title: Text(message.text),
                                    dismissButton: .cancel()
                                )
                            }
                VStack(spacing: 20) {
                    Text("What is her favourite milkshake flavour?")
                        .font(.title3)
                        .fontWeight(.bold)
                    HStack(spacing: 50) {
                        Button("Chocolate") {
                                        self.message = Messsage(text: "Correct! :)")
                                    }
                        Button("Vanilla") {
                                        self.message = Messsage(text: "Incorrect :(")
                                    }
                    }
                    HStack(spacing: 50) {
                        Button("Starwberry") {
                                        self.message = Messsage(text: "Incorrect :(")
                                    }
                        Button("Mango") {
                                        self.message = Messsage(text: "Incorrect :(")
                                    }
                    }
                            }.alert(item: $message) { message in
                                Alert(
                                    title: Text(message.text),
                                    dismissButton: .cancel()
                                )
                            }
                }
                
            
                
        }
    }
}
            
        
    
struct ThirdPage_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPage()
    }
}
