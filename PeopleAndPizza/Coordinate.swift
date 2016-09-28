//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Rama Milaneh on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Coordinate{
    var latitude: Double
    var longitude: Double
    init(latitude: Double, longitude: Double){
        self.latitude = latitude
        self.longitude = longitude
    }
    var isInSoutherHemisphere: Bool{
        var new: Bool = false
        if self.latitude>0{
            new = true
        }
        return new
        
    }
    var isInWesternHemisphere: Bool{
        if self.longitude>0{
            return true
        }else{
            return false
        }
    }
    var isInEasternHemisphere: Bool{
        if self.longitude<0{
            return true
        }else{
            return false
        }
    }
    
    func distanceTo(coordinate: Coordinate)->Double{
       return acos(sin(self.latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude.radians-coordinate.longitude.radians)) * 6371000 / 1000
    }
    
 }
    
    extension Double {
        var radians: Double {
            return self * M_PI / 180
        }
}



