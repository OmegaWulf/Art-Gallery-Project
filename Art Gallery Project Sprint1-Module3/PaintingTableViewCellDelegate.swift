//
//  PaintingTableViewCellDelegate.swift
//  Art Gallery Project Sprint1-Module3
//
//  Created by Nikita Thomas on 10/3/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

// A custom protocol for communicating between your cell and your model

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}
