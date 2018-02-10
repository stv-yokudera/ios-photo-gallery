//
//  PhotoGalleryTests.swift
//  ios-photo-galleryTests
//
//  Created by OkuderaYuki on 2018/02/09.
//  Copyright © 2018年 OkuderaYuki. All rights reserved.
//

@testable import ios_photo_gallery
import XCTest

final class PhotoGalleryTests: XCTestCase {

    func testDummyPhotos() {

        let photoGalleryArray = PhotoGallery.dummyPhotos()

        XCTAssertEqual(photoGalleryArray.count, 3)
        XCTAssertEqual(photoGalleryArray.first?.image, #imageLiteral(resourceName: "2"))
    }
}
