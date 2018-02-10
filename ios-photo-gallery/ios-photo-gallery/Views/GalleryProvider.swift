//
//  GalleryProvider.swift
//  ios-photo-gallery
//
//  Created by OkuderaYuki on 2018/02/09.
//  Copyright © 2018年 OkuderaYuki. All rights reserved.
//

import UIKit

final class GalleryProvider: NSObject {

    var photoGallerys = [PhotoGallery]()

    init(photoGallerys: [PhotoGallery]) {
        self.photoGallerys = photoGallerys
    }
}

extension GalleryProvider: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return photoGallerys.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoGalleryCell.identifier,
                                                            for: indexPath) as? PhotoGalleryCell else {

                                                                fatalError("PhotoGalleryCell is nil.")
        }

        cell.photoGallery = photoGallerys[indexPath.row]
        return cell
    }
}
