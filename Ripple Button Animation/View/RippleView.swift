//
//  RippleEffectView.swift
//  Ripple Button Animation
//
//  Created by Alfonso Gonzalez Miramontes on 24/06/25.
//
import SwiftUI

struct RippleView: View {
    var model: RippleModel
    
    var body: some View {
        ZStack {
            CustomCircle(color: model.color, width: model.width, height: model.height, scale: model.scale1)
            CustomCircle(color: model.color, width: model.width, height: model.height, scale: model.scale2)
        }
    }
}
