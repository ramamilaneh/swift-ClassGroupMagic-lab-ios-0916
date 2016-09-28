//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Rama Milaneh on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class PizzaDeliveryService{
    var location: Coordinate
    var pizzaAvailable: Int
    
    init(location: Coordinate){
        self.location = location
        self.pizzaAvailable = 10
    }
    
    func isInRange(destination: Coordinate) ->Bool{
        var result = false
        if destination.distanceTo(coordinate: self.location)<5000{
            result = true
        }
        return result
    }
    
    func deliverPizzaTo(destination: Coordinate) ->Bool{
        if self.isInRange(destination: destination){
            if self.pizzaAvailable != 0{
            self.pizzaAvailable -= 1
            }else{
                return false
            }
            return true
        }else{
            return false
        }
        
    }
    
    
}
