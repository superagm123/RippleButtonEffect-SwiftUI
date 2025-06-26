//
//  RippleEffectPhases.swift
//  Ripple Button Animation
//
//  Created by Alfonso Gonzalez Miramontes on 24/06/25.
//

import SwiftUI

struct RippleModel {
    let width: CGFloat
    let height: CGFloat
    var scale1: CGFloat
    var scale2: CGFloat
    
    init(
        width: CGFloat = 150,
        height: CGFloat = 150,
        scale1: CGFloat = 1.0,
        scale2: CGFloat = 1.0
    ){
        self.width = width
        self.height = height
        self.scale1 = scale1
        self.scale2 = scale2
    }
}

