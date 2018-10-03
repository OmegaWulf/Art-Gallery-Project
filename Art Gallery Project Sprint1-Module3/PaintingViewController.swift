//
//  ViewController.swift
//  Art Gallery Project Sprint1-Module3
//
//  Created by Nikita Thomas on 10/3/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    

}

