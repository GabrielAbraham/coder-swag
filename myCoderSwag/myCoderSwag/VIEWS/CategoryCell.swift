//
//  CategoryCell.swift
//  myCoderSwag
//
//  Created by Gabriel Abraham on 21/09/2017.
//  Copyright © 2017 Gabriel Abraham. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
