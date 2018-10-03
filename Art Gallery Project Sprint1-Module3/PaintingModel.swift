//
//  PaintingModel.swift
//  Art Gallery Project Sprint1-Module3
//
//  Created by Nikita Thomas on 10/3/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

//The model that will store your application state

import UIKit


class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    var paintings = [Painting]()
    
    weak var tableView: UITableView!
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = cell.indexPath else {return}
        paintings[indexPath.row].isLiked.toggle()
        
        switch paintings[indexPath.row].isLiked {
        case true:
            cell.likeButton.setTitle("Liked! ❤️", for: .normal)
        case false:
            cell.likeButton.setTitle("Like", for: .normal)
        }
        
        
    }
    
    override init() {
        for n in 1...12 {
            if let image = UIImage(named: String(n)) {
                paintings.append(Painting(image: image))
            }
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    
    let reuseIdentifier = "cell"
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as? PaintingTableViewCell else {
            fatalError("No cell")
        }
        cell.delegate = self
        let painting = paintings[indexPath.row]
        if painting.isLiked {
            cell.likeButton.setTitle("Liked! ❤️", for: .normal)
        } else {
            cell.likeButton.setTitle("Like", for: .normal)
        }
        
        cell.portraitView.image = painting.image
        cell.indexPath = indexPath
        
        return cell
    }
    
    
    
}
