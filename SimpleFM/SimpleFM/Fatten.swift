//
//  Fatten.swift
//  SimpleFM
//
//  Created by Kevin Hartley on 6/24/16.
//  Copyright © 2016 Hartley Development. All rights reserved.
//

import AudioKit

class Fatten: AKNode {
    var dryWetMix: AKDryWetMixer
    
    init(_ input: AKNode) {
        let delay = AKCompressor.init(input, threshold: -20, headRoom: 5, attackTime: 0.001, releaseTime: 0.05, masterGain: 4)
        let pannedDelay = AKPanner(delay, pan: 0)
        let pannedSource = AKPanner(input, pan: 0)
        let a = AKOscillator.init(frequency: 1200, amplitude: 20, detuningOffset: -12, detuningMultiplier: 2)
        let wet = AKMixer(delay, a, pannedDelay, pannedSource)
        dryWetMix = AKDryWetMixer(input, wet, balance: 0)
        super.init()
        self.avAudioNode = dryWetMix.avAudioNode
        input.addConnectionPoint(self)
    }
}

