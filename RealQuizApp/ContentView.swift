//
//  ContentView.swift
//  RealQuizApp
//
//  Created by Rhiannon O'Brien on 2022-01-08.
//

// Home Page/starting page, stacked images. Two buttons embedded into navigation links, each linked to a different page. When clicked, next screen is brough up.

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
        
            VStack {
                
                NavigationView {
                    ZStack {
                        Image("otherbluebkg")
                        VStack(spacing: 60) {
                            
                            Image("quizlogo2")
                            
                            Text("Welcome to Quiz Time!")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                            Text("Click Green for Miscellaneous Trivia and Red for Taylor Swift Trivia.")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .frame(width: 400.0, height: 50.0)
                                
                            HStack {
                                NavigationLink(destination: SecondPage()) {
                                                                 
                                                                Image("greenstartbtn")
                                                                
                                                             }.buttonStyle(PlainButtonStyle())
                                                                
                                                                NavigationLink(destination: ThirdPage()) {
                                                                 
                                                                Image("redstartbtn")
                                                                
                                                        }.buttonStyle(PlainButtonStyle())
                            }
                                
                                
                        }
                        
                    }
                      }
                   }
                }
               
                                   
        }
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
