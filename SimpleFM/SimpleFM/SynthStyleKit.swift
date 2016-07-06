//
//  SynthStyleKit.swift
//  AnalogSynthX
//
//  Created by Matthew Fecher on 1/9/16.
//  Copyright (c) 2016 AudioKit. All rights reserved.

import UIKit

public class SynthStyleKit: NSObject {

    //// Drawing Methods

    public class func drawKnobMedium(knobValue knobValue: CGFloat = 0.332) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Image Declarations
        let knob140_base = UIImage(named: "knob140_base")!
        let knob140_indicator = UIImage(named: "knob140_indicator")!

        //// Variable Declarations
        let knobAngle: CGFloat = -240 * knobValue

        //// knob base Drawing
        let knobBasePath = UIBezierPath(rect: CGRect(x: -5, y: -5, width: 180, height: 180))
        CGContextSaveGState(context)
        knobBasePath.addClip()
        knob140_base.drawInRect(CGRectMake(-5, -5, knob140_base.size.width, knob140_base.size.height))
        CGContextRestoreGState(context)

        //// Indicator Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, 40, 40)
        CGContextRotateCTM(context, -(knobAngle + 120) * CGFloat(M_PI) / 180)

        let indicatorPath = UIBezierPath(rect: CGRect(x: -45, y: -45, width: 180, height: 180))
        CGContextSaveGState(context)
        indicatorPath.addClip()
        knob140_indicator.drawInRect(CGRectMake(-45, -45, knob140_indicator.size.width, knob140_indicator.size.height))
        CGContextRestoreGState(context)
        
        

        CGContextRestoreGState(context)
    }

    public class func drawKnobLarge(knobValue knobValue: CGFloat = 0.332) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Image Declarations
        let knob212_base = UIImage(named: "knob212_base")!
        let knob212_indicator = UIImage(named: "knob212_indicator")!

        //// Variable Declarations
        let knobAngle: CGFloat = -240 * knobValue

        //// Picture Drawing
        let picturePath = UIBezierPath(rect: CGRect(x: 10, y: 10, width: 106, height: 106))
        CGContextSaveGState(context)
        picturePath.addClip()
        knob212_base.drawInRect(CGRectMake(10, 10, knob212_base.size.width, knob212_base.size.height))
        CGContextRestoreGState(context)

        //// Picture 2 Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, 63, 63)
        CGContextRotateCTM(context, -(knobAngle + 120) * CGFloat(M_PI) / 180)

        let picture2Path = UIBezierPath(rect: CGRect(x: -53, y: -53, width: 106, height: 106))
        CGContextSaveGState(context)
        picture2Path.addClip()
        knob212_indicator.drawInRect(CGRectMake(-53, -53, knob212_indicator.size.width, knob212_indicator.size.height))
        CGContextRestoreGState(context)

        CGContextRestoreGState(context)
    }

    public class func drawKnobSmall(knobValue knobValue: CGFloat = 0.332) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Image Declarations
        let knob120_base = UIImage(named: "knob120_base")!
        let knob120_indicator = UIImage(named: "knob120_indicator")!

        //// Variable Declarations
        let knobAngle: CGFloat = -240 * knobValue

        //// Picture Drawing
        let picturePath = UIBezierPath(rect: CGRect(x: 5, y: 5, width: 60, height: 60))
        CGContextSaveGState(context)
        picturePath.addClip()
        knob120_base.drawInRect(CGRectMake(5, 5, knob120_base.size.width, knob120_base.size.height))
        CGContextRestoreGState(context)

        //// Indicator Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, 35, 35)
        CGContextRotateCTM(context, -(knobAngle + 120) * CGFloat(M_PI) / 180)

        let indicatorPath = UIBezierPath(rect: CGRect(x: -30, y: -30, width: 60, height: 60))
        CGContextSaveGState(context)
        indicatorPath.addClip()
        knob120_indicator.drawInRect(CGRectMake(-30, -30, knob120_indicator.size.width, knob120_indicator.size.height))
        CGContextRestoreGState(context)

        CGContextRestoreGState(context)
    }

}
