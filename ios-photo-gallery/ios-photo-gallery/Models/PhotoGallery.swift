//
//  PhotoGallery.swift
//  ios-photo-gallery
//
//  Created by OkuderaYuki on 2018/02/09.
//  Copyright © 2018年 OkuderaYuki. All rights reserved.
//

import UIKit

final class PhotoGallery {

    var image: UIImage

    init(image: UIImage) {
        self.image = image
    }

    static func dummyPhotos() -> [PhotoGallery] {
        return [
            PhotoGallery(image: #imageLiteral(resourceName: "2")),
            PhotoGallery(image: #imageLiteral(resourceName: "1")),
            PhotoGallery(image: #imageLiteral(resourceName: "3"))
        ]
    }
}
