//
//  GalleryViewController.swift
//  ios-photo-gallery
//
//  Created by OkuderaYuki on 2018/02/09.
//  Copyright © 2018年 OkuderaYuki. All rights reserved.
//

import UIKit

final class GalleryViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView!

    private var provider = GalleryProvider(photoGallerys: PhotoGallery.dummyPhotos())

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        collectionView.contentInsetAdjustmentBehavior = .automatic
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.itemSize = CGSize(width: PhotoGalleryCell.width, height: PhotoGalleryCell.height)
        }

        let verticalInset = (view.bounds.width - PhotoGalleryCell.width) / 2.0
        let horizontalInset = (view.bounds.height - PhotoGalleryCell.height) / 2.0
        collectionView?.contentInset = UIEdgeInsets(top: verticalInset,
                                                    left: verticalInset,
                                                    bottom: horizontalInset,
                                                    right: horizontalInset)
        collectionView?.dataSource = provider
        collectionView?.delegate = self
    }
}

extension GalleryViewController: UICollectionViewDelegate {

    func scrollViewWillEndDragging(_ scrollView: UIScrollView,
                                   withVelocity velocity: CGPoint,
                                   targetContentOffset: UnsafeMutablePointer<CGPoint>) {

        guard let layout = self.collectionView?.collectionViewLayout as? UICollectionViewFlowLayout else {
                return
        }

        let cellWidthIncludingMargin = layout.itemSize.width + layout.minimumLineSpacing
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left) / cellWidthIncludingMargin
        let roundedIndex = round(index)

        offset = CGPoint(x: roundedIndex * cellWidthIncludingMargin - scrollView.contentInset.left,
                         y: -scrollView.contentInset.top)
        targetContentOffset.pointee = offset
    }
}
