//
//  PhotoGalleryCell.swift
//  ios-photo-gallery
//
//  Created by OkuderaYuki on 2018/02/09.
//  Copyright © 2018年 OkuderaYuki. All rights reserved.
//

import UIKit

final class PhotoGalleryCell: UICollectionViewCell {

    @IBOutlet private weak var imageView: UIImageView!

    static var identifier: String {
        return "PhotoGalleryCell"
    }

    static var width: CGFloat {
        return floor(UIScreen.main.bounds.size.width * 0.5)
    }

    static var height: CGFloat {
        return floor(UIScreen.main.bounds.size.height * 0.5)
    }

    var photoGallery: PhotoGallery? {
        didSet {
            imageView.image = photoGallery?.image
        }
    }
}
