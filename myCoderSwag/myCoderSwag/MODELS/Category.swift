//
//  Category.swift
//  myCoderSwag
//
//  Created by Gabriel Abraham on 21/09/2017.
//  Copyright © 2017 Gabriel Abraham. All rights reserved.
//

import Foundation

struct Category{
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
