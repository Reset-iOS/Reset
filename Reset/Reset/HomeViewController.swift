//
//  HomeViewController.swift
//  Reset
//
//  Created by Prasanjit Panda on 12/11/24.
//

import UIKit


class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var dataSourceArray = ["Shirts", "Shirts", "Shirts", "Shirts","Shirts"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup collection view layout
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 100)
        
        // Initialize and setup the collection view
        
        collectionView.dataSource = self
        collectionView.delegate = self
    
       
        
     
        // Enable long-press gesture for reordering
        let longPressGesture = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(_:)))
        collectionView.addGestureRecognizer(longPressGesture)
    }
    
    // MARK: - UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSourceArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
        
        cell.configure(with: dataSourceArray[indexPath.row])
        
        
        return cell
    }
    
    // MARK: - UICollectionViewDataSource - Move Item
    
    func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        // Allow all items to be movable; return false for items you want to keep fixed
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        // Update data source array to reflect the move
        let movedItem = dataSourceArray.remove(at: sourceIndexPath.item)
        dataSourceArray.insert(movedItem, at: destinationIndexPath.item)
    }
    
    // MARK: - Long Press Gesture Handler
    
    @objc func handleLongPress(_ gesture: UILongPressGestureRecognizer) {
        switch gesture.state {
        case .began:
            guard let selectedIndexPath = collectionView.indexPathForItem(at: gesture.location(in: collectionView)) else { break }
            collectionView.beginInteractiveMovementForItem(at: selectedIndexPath)
            
        case .changed:
            collectionView.updateInteractiveMovementTargetPosition(gesture.location(in: gesture.view!))
            
        case .ended:
            collectionView.endInteractiveMovement()
            
        default:
            collectionView.cancelInteractiveMovement()
        }
    }
}
