//
//  Pizza.swift
//  coursera-interfaz-ios-week2
//
//  Created by Javier Soto on 26/6/16.
//  Copyright © 2016 Javier Soto. All rights reserved.
//

import UIKit

class Pizza: NSObject {
    var size: String!
    var base: String!
    var cheese: String!
    var ingredients: NSArray!
    
    func toString(){
        print("size: \(size)\nbase: \(base)\ncheese: \(cheese)\ningredients: \(ingredients.componentsJoinedByString(", "))")
    }
}
