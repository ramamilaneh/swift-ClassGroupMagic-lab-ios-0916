//
//  Tiger.swift
//  PeopleAndPizza
//
//  Created by Rama Milaneh on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Tiger{
    var name: String
    var isHungry: Bool = true
    init(name: String){
       self.name = name
    }
    func eat(){
        self.isHungry = false
    }
    
}
