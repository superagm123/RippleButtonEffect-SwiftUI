//
//  CircularButton.swift
//  Ripple Button Animation
//
//  Created by Alfonso Gonzalez Miramontes on 24/06/25.
//
import SwiftUI

struct CircularButton<Content: View>: View {
    let action: () -> Void
    let content: Content
    
    @State private var opacity: CGFloat = 1
    
    init(action: @escaping () -> Void, @ViewBuilder content: () -> Content){
        self.action = action
        self.content = content()
    }
    
    var body: some View {
        content
            .opacity(opacity)
            .onTapGesture {
                withAnimation(.linear(duration: 0.2)) {
                    opacity = 0.2
                }
                
                action()
                
                withAnimation(.linear(duration: 0.2).delay(0.1)){
                    opacity = 1
                }
            }
            .shadow(color: .gray.opacity(0.7), radius: 2, x: 0, y: 2)
    }
}
