//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by 강동영 on 11/14/24.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static var sharedDingPlayer: AVPlayer {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }
}
