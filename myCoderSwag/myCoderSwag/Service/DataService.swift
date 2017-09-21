//
//  DataService.swift
//  myCoderSwag
//
//  Created by Gabriel Abraham on 21/09/2017.
//  Copyright © 2017 Gabriel Abraham. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    private let categories = [Category(title: "SHIRTS", imageName: "sirts.png"),
                              Category(title: "HOODIES", imageName: "hoodies.png"),
                              Category(title: "HATS", imageName: "hats.png"),
                              Category(title: "DIGITAL", imageName: "digital.png")]
    
    func getCategories() -> [Category]{
        return categories
    }
}
