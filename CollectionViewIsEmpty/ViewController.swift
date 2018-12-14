//
//  ViewController.swift
//  CollectionViewIsEmpty
//
//  Created by Jason Chalkley on 14/12/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let cellID = "cellID"
    var cellNotes: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (self.cellNotes.count == 0) {
            self.collectionView.setEmptyMessage("No data to display 🧐.")
        } else {
        self.collectionView.restore()
        }
        return cellNotes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        let notes = self.cellNotes[indexPath.row]
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: cell.bounds.size.width, height: 40))
        title.textColor = UIColor.black
        title.text = notes
        cell.contentView.addSubview(title)
        cell.backgroundColor = .clear
        return cell
    }
    
}

