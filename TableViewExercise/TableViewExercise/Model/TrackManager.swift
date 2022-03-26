//
//  TrackManager.swift
//  TableViewExercise
//
//  Created by user209373 on 3/25/22.
//

import Foundation


class TrackManager{
    var tracks:[Track] = []
    
    init(){
        for index in 1...50 {
            var currentTrack = Track()
            currentTrack.name = "Track #\(index)"
            currentTrack.price =  Double.random(in: 0...20)
            tracks.append(currentTrack)
        }
    }
    
    
    
}
