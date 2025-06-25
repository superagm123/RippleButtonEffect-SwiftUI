//
//  RippleModifier.swift
//  Ripple Button Animation
//
//  Created by Alfonso Gonzalez Miramontes on 25/06/25.
//
import SwiftUI

struct RippleModifier: ViewModifier {
    let model: RippleModel
    
    func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: model){view, value in
                view.overlay{
                    RippleView(
                        model: .init(scale1: value.scale1, scale2: value.scale2)
                    )
                }
            } keyframes: {_ in
                KeyframeTrack(\.scale1){
                    LinearKeyframe(1.0, duration: 1.3)
                    LinearKeyframe(0.9, duration: 0.5)
                    LinearKeyframe(1.0, duration: 0.5)
                }
            
                KeyframeTrack(\.scale2) {
                    LinearKeyframe(1.0, duration: 1.3)
                    LinearKeyframe(0.9, duration: 0.5)
                    LinearKeyframe(1.0, duration: 0.5)
                    LinearKeyframe(1.3, duration: 1)
                }
        }
    }
}

extension View {
    func rippleEffect(model: RippleModel) -> some View {
        self.modifier(
            RippleModifier(model: model)
        )
    }
}
