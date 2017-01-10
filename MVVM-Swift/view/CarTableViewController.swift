//
//  CarTableViewController.swift
//  MVVM-Swift
//
//  Created by Humberto Vieira on 10/01/17.
//  Copyright © 2017 Humberto Vieira. All rights reserved.
//

import UIKit

class CarTableViewController: UITableViewController {

    let cars: [CarViewModel] = (UIApplication.shared.delegate as! AppDelegate).cars
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cars.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath)

        let carViewModel = cars[indexPath.row]
        
        cell.textLabel?.text = carViewModel.titleText
        cell.detailTextLabel?.text = carViewModel.horsepowerText
        
        loadImage(cell: cell, photoURL: carViewModel.photoURL)

        return cell
    }
    
    
    func loadImage(cell: UITableViewCell, photoURL: URL?) {
        DispatchQueue.main.async {
            guard let imageURL = photoURL, let imageData = NSData(contentsOf: imageURL) else {
                return
            }
            
            cell.imageView?.image = UIImage(data: imageData as Data)
            cell.setNeedsLayout()
        }
    }
    
    

}
















