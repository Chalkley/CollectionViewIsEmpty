//
//  CollectionViewIsEmpty.swift
//  CollectionViewIsEmpty
//
//  Created by Jason Chalkley on 14/12/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//


import UIKit

//Can use for TableView (change relevant)

extension UICollectionView {
    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height))
        messageLabel.text = message
        messageLabel.textColor = .white
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        messageLabel.font = UIFont(name: "AvenirNext-Medium", size: 18)
        messageLabel.sizeToFit()
        
        self.backgroundView = messageLabel;
    }
    func restore() {
        self.backgroundView = nil
    }
}


// When calling in VC example:

//func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//    if (self.favourite.count == 0) {
//        self.collectionView.setEmptyMessage("No favourites picked yet! :(")
//    } else {
//        self.collectionView.restore()
//    }
//    return self.favourite.count
//}
