//
//  ContentView.swift
//  FlucomTrivia
//
//  Created by Tran Luan on 21/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image(.hogwarts)
                    .resizable()
                    .frame(width: geo.size.width * 3, height: geo.size.height)
                    .padding(.top, 3)
                    .phaseAnimator([false, true]) { content, phase in
                        content
                            .offset(x: phase ? geo.size.width/1.1 : -geo.size.width/1.1)
                    } animation: { _ in
                            .linear(duration: 60)
                    }
                
                VStack {
                    VStack {
                        Image(systemName: "bolt.fill")
                            .imageScale(.large)
                            .font(.largeTitle)
                        
                        Text("Flucom")
                            .font(.custom("PartyLetPlain", size: 70))
                            .padding(.bottom, -50)
                        
                        Text("Trivia")
                            .font(.custom("PartyLetPlain", size: 60))
                    }
//                    .padding(70)
                    
                    Spacer()
                }
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
