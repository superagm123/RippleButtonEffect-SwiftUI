//
//  CustomCircle.swift
//  Ripple Button Animation
//
//  Created by Alfonso Gonzalez Miramontes on 25/06/25.
//
import SwiftUI

struct CustomCircle: View {
    let color: Color
    let width: CGFloat
    let height: CGFloat
    let scale: CGFloat
    
    var body: some View {
        Circle()
            .stroke(color, lineWidth: 1)
            .frame(width: width, height: height)
            .scaleEffect(scale)
    }
}
