//
//  PopUpView.swift
//  Ripple Button Animation
//
//  Created by Alfonso Gonzalez Miramontes on 25/06/25.
//
import SwiftUI

struct PopUpView: View {
    @Binding var showPopView: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Close") {
                    withAnimation{
                        showPopView = false
                    }
                }
            }
            .navigationTitle("Popup")
        }
    }
}
