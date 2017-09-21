//
//  ViewController.swift
//  myCoderSwag
//
//  Created by Gabriel Abraham on 21/09/2017.
//  Copyright © 2017 Gabriel Abraham. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
                cell.updateViews(category: category )
                return cell
            }else{
                return CategoryCell()
        }
    }
}

/*
 
 or we could do this, they do exactly the same thing
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
     let categories = DataService.instance.getCategories()
         let category = categories[indexPath.row]
         cell.updateViews(category: category )
         return cell
     }else{
         return CategoryCell()
     }
 }
 */
