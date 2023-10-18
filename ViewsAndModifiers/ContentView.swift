//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Henrieke Baunack on 10/16/23.
//

import SwiftUI
struct BlueTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
}

extension View {
    func blueAndBolded() -> some View{
        modifier(BlueTitle())
    }
}

struct ContentView: View {
    
    var body: some View {
        Text("Hello Henny!").modifier(BlueTitle())
        Text("Another Test").blueAndBolded()
        
    }
}

#Preview {
    ContentView()
}
