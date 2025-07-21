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
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .padding(.top, 3)
            .phaseAnimator([false, true]) { content, phase in
                content
                    .offset(x: phase ? geo.size.width/1.1 : -geo.size.width/1.1)
            } animation: { _ in
                    .linear(duration: 60)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
