//
//  RippleModifier.swift
//  Ripple Button Animation
//
//  Created by Alfonso Gonzalez Miramontes on 25/06/25.
//
import SwiftUI

struct RippleModifier<RippleShape: Shape>: ViewModifier {
    let rippleShape: RippleShape
    let color: Color
    let width: CGFloat
    let height: CGFloat
    
    init(rippleShape: RippleShape = .circle, color: Color = .green, width: CGFloat = 150, height: CGFloat = 150){
        self.rippleShape = rippleShape
        self.color = color
        self.width = width
        self.height = height
    }
    
    func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: RippleModel()){view, value in
                view.overlay{
                    RippleView(
                        rippleShape: rippleShape,
                        color: color,
                        model: .init(width: width, height: height, scale1: value.scale1, scale2: value.scale2)
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
    func rippleEffect<RippleShape: Shape>(rippleShape: RippleShape = .circle, color: Color = .green, width: CGFloat = 150, height: CGFloat = 150) -> some View {
        self.modifier(
            RippleModifier(rippleShape: rippleShape, color: color, width: width, height: height)
        )
    }
}
