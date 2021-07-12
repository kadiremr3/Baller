//
//  Game.swift
//  Baller
//
//  Created by Kadir Emre on 12.07.2021.
//

import Foundation
import MapKit

class Game {
    var gameName : String
    var date     : Date
    var location : CLLocation
    
    init(gameName: String, date: Date, location: CLLocation){
        self.gameName = gameName
        self.date = date
        self.location = location
    }
}
