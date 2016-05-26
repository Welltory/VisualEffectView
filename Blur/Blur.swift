//
//  Blur.swift
//  Blur
//
//  Created by Lasha Efremidze on 5/25/16.
//  Copyright © 2016 Lasha Efremidze. All rights reserved.
//

import UIKit

class CustomVisualEffectView: UIVisualEffectView {
    
    private let blurEffect: UIBlurEffect
    
    var colorTint: UIColor {
        get { return blurEffect.valueForKeyPath("colorTint") as! UIColor }
        set { blurEffect.setValue(newValue, forKeyPath: "colorTint"); self.effect = blurEffect }
    }
    
    var colorTintAlpha: CGFloat {
        get { return blurEffect.valueForKeyPath("colorTintAlpha") as! CGFloat }
        set { blurEffect.setValue(newValue, forKeyPath: "colorTintAlpha"); self.effect = blurEffect }
    }
    
    var blurRadius: CGFloat {
        get { return blurEffect.valueForKeyPath("blurRadius") as! CGFloat }
        set { blurEffect.setValue(newValue, forKeyPath: "blurRadius"); self.effect = blurEffect }
    }
    
    var saturationDeltaFactor: CGFloat {
        get { return blurEffect.valueForKeyPath("saturationDeltaFactor") as! CGFloat }
        set { blurEffect.setValue(newValue, forKeyPath: "saturationDeltaFactor"); self.effect = blurEffect }
    }
    
    var scale: CGFloat {
        get { return blurEffect.valueForKeyPath("scale") as! CGFloat }
        set { blurEffect.setValue(newValue, forKeyPath: "scale"); self.effect = blurEffect }
    }
    
    // ["grayscaleTintLevel", "grayscaleTintAlpha", "lightenGrayscaleWithSourceOver", "colorTint", "colorTintAlpha", "colorBurnTintLevel", "colorBurnTintAlpha", "darkeningTintAlpha", "darkeningTintHue", "darkeningTintSaturation", "darkenWithSourceOver", "blurRadius", "saturationDeltaFactor", "scale", "zoom"]
    
    init() {
        self.blurEffect = (NSClassFromString("_UICustomBlurEffect") as! UIBlurEffect.Type).init()
        super.init(effect: self.blurEffect)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.blurEffect = (NSClassFromString("_UICustomBlurEffect") as! UIBlurEffect.Type).init()
        super.init(coder: aDecoder)
        self.effect = self.blurEffect
    }
    
}