//
//  PaintingTableViewCell.swift
//  Art Gallery Project Sprint1-Module3
//
//  Created by Nikita Thomas on 10/3/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    
    weak var delegate: PaintingTableViewCellDelegate?
    var indexPath: IndexPath?
    
    @IBAction func toggleAppreciation(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
    }
    
    
}
