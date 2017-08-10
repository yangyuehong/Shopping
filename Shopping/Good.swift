//
//  Good.swift
//  Shopping
//
//  Created by Yang, Yuehong | OSPD on 2017/08/10.
//  Copyright © 2017年 Yang, Yuehong | OSPD. All rights reserved.
//

import UIKit

class Good{
    //MARK: Properties
    
    var name: String
    var price: String
    var shop: String
    
    //MARK: Initialization
    
    init?(name: String, price: String, shop: String) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.price = price
        self.shop = shop
        
    }
}
