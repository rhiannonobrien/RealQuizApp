//
//  SecondPage.swift
//  RealQuizApp
//
//  Created by Rhiannon O'Brien on 2022-01-08.
//

// First quiz page. Four text views, four buttons linked to alerts when clicked. Vertically stacked as a whole, answers are horizontally and vertically stacked. Navigation link leads back to Home Page. 

import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
}

struct SecondPage: View {
    @State private var message: Message? = nil
    var body: some View {
        ZStack {
            
            Image("rgreenbkg")
            
            VStack(spacing: 40) {
                Text("Miscellaneous Trivia")
                    .font(.title)
                    .fontWeight(.bold)
                // formatting of questions
                VStack(spacing: 20) {
                    Text("What is a group of bunnies called?")
                        .font(.title3)
                        .fontWeight(.bold)
                    HStack(spacing: 50) {
                        //calling of sturct, writes what alert shows
                        Button("A poof") {
                                        self.message = Message(text: "Incorrect :(")
                                    }
                        Button("A hopper") {
                                        self.message = Message(text: "Incorrect :(")
                                    }
                    }
                    HStack(spacing: 50) {
                        Button("A tall eared group") {
                                        self.message = Message(text: "Incorrect :(")
                                    }
                        Button("A fluffle") {
                                        self.message = Message(text: "Correct! :)")
                                    }
                    }// creates alert image, creates dismiss button
                            }.alert(item: $message) { message in
                                Alert(
                                    title: Text(message.text),
                                    dismissButton: .cancel()
                                )
                            }
                VStack(spacing: 20) {
                    Text("What does M&M stand for?")
                        .font(.title3)
                        .fontWeight(.bold)
                    HStack(spacing: 50) {
                        Button("Max & Marty") {
                                        self.message = Message(text: "Incorrect :(")
                                    }
                        Button("Mars & Murrie") {
                                        self.message = Message(text: "Correct! :)")
                                    }
                    }
                    HStack(spacing: 50) {
                        Button("Matthew & Mane") {
                                        self.message = Message(text: "Incorrect :(")
                                    }
                        Button("Mort & Major") {
                                        self.message = Message(text: "Incorrect :(")
                                    }
                    }
                            }.alert(item: $message) { message in
                                Alert(
                                    title: Text(message.text),
                                    dismissButton: .cancel()
                                )
                            }
                VStack(spacing: 20) {
                    Text("How many ants are there for every human?")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: 400.0)
                        
                    HStack(spacing: 50) {
                        Button("2.3 million") {
                                        self.message = Message(text: "Incorrect :(")
                                    }
                        Button("10 million") {
                                        self.message = Message(text: "Incorrect :(")
                                    }
                    }
                    HStack(spacing: 50) {
                        Button("1.6 million") {
                                        self.message = Message(text: "Correct! :)")
                                    }
                        Button("920,785") {
                                        self.message = Message(text: "Incorrect :(")
                                    }
                    }
                            }.alert(item: $message) { message in
                                Alert(
                                    title: Text(message.text),
                                    dismissButton: .cancel()
                                )
                            }
                VStack(spacing: 20) {
                    Text("What is the most streamed song on Spotify?")
                        .font(.title3)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(width: 400.0)
                    HStack(spacing: 50) {
                        Button("Shape of You") {
                                        self.message = Message(text: "Correct! :)")
                                    }
                        Button("Blinding Lights") {
                                        self.message = Message(text: "Incorrect :(")
                                    }
                    }
                    HStack(spacing: 50) {
                        Button("Dance Monkey") {
                                        self.message = Message(text: "Incorrect :(")
                                    }
                        Button("Señorita") {
                                        self.message = Message(text: "Incorrect :(")
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
            
        
struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}



