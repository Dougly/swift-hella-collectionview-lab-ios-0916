//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var allNumbersCollectionView: UICollectionView!
    
    var cellIdentifier = "myCell"
    var pushIdentifier = "pushToCellDetail"
    
    var fibArray: [Int] = []

    override func viewDidLoad() {
        fibArray = createFibonacciArray()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        for num in fibArray {
            if num == indexPath.row {
                cell.backgroundColor = UIColor.purple
                break
            }
            cell.backgroundColor = UIColor.yellow
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == pushIdentifier {
            let dest = segue.destination as! CellDetail
            let indexPath = allNumbersCollectionView.indexPath(for: sender as! UICollectionViewCell)
            
            if let indexPath = indexPath {
                dest.numberVar = String(indexPath.item)
                dest.background = (allNumbersCollectionView.cellForItem(at: indexPath)?.backgroundColor)!
            }
        }
    }
}

