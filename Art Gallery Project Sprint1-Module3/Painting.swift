//
//  Painting.swift
//  Art Gallery Project Sprint1-Module3
//
//  Created by Nikita Thomas on 10/3/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

//Basic painting instance type

import UIKit

struct Painting {
    let image: UIImage
    var isLiked: Bool
    
    init(image: UIImage, isLiked: Bool = false) {
        self.image = image
        self.isLiked = isLiked
    }
}

