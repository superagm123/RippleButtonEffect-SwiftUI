//
//  MainScreen.swift
//  Ripple Button Animation
//
//  Created by Alfonso Gonzalez Miramontes on 23/06/25.
//

import SwiftUI

struct MainScreen: View {
    @State private var showPopUpView: Bool = false
    
    var text: some View {
        Text("Start")
            .font(.title)
            .fontWeight(.semibold)
            .fontDesign(.rounded)
            .foregroundStyle(.white)
            .kerning(3)
    }

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black.gradient)
                .ignoresSafeArea()
            
            CircularButton(action: {
                withAnimation {
                    showPopUpView = true
                }
            }){
                text
                    .rippleEffect(rippleShape: .rect(cornerRadius: 25), color: .pink, width: 150, height: 250)
            }
            ZStack {
                if showPopUpView {
                    PopUpView(showPopView: $showPopUpView)
                        .frame(width: 250, height: 250)
                        .clipShape(.rect(cornerRadius: 25))
                        .transition(
                            .asymmetric(
                                insertion: .move(edge: .bottom),
                                removal: .opacity.animation(.spring).combined(with: .scale(scale: 0.5, anchor: .bottomTrailing))
                            )
                        )
                        .zIndex(1)
                }
            }
        }
    }
}


#Preview {
    MainScreen()
}
