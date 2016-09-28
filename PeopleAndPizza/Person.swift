//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Rama Milaneh on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person{
    var firstName: String
    var lastName: String
    var home: Coordinate
    var isHungry: Bool = true
    init(firstName: String, lastName: String, home: Coordinate){
        self.firstName = firstName
        self.home = home
        self.lastName = lastName
    }
    
    func eatPizzaFrom(service: PizzaDeliveryService) ->Bool{
        if isHungry==true && service.isInRange(destination: home)==true {
            self.isHungry = false
            return false
        }else {
            return false
        }
    }
}
