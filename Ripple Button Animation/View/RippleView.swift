//
//  RippleEffectView.swift
//  Ripple Button Animation
//
//  Created by Alfonso Gonzalez Miramontes on 24/06/25.
//
import SwiftUI

struct RippleView<RippleShape: Shape>: View {
    let rippleShape: RippleShape
    let color: Color
    var model: RippleModel
    
    var body: some View {
        ZStack {
            rippleShape
                .stroke(color, lineWidth: 1)
                .frame(width: model.width, height: model.height)
                .scaleEffect(model.scale1)
            
            rippleShape
                .stroke(color, lineWidth: 1)
                .frame(width: model.width, height: model.height)
                .scaleEffect(model.scale2)
        }
    }
}
