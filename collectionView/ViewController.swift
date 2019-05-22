//
//  ViewController.swift
//  collectionView
//
//  Created by Harish Hardy on 19/05/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellX = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellX1
        
        if (indexPath.item % 2 == 0)
        {
            cellX.backgroundColor = UIColor.red
            cellX.labelX1.text = "RED"
            
        }
        else
        {
            cellX.backgroundColor = UIColor.blue
            cellX.labelX1.text = "BLUE"
        }
        
        return cellX
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        
        if (indexPath.item % 2 == 0)
        {
            let alertControllerX = UIAlertController(title: "Selected Color : ", message:
                "RED", preferredStyle: .alert)
            alertControllerX.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertControllerX, animated: true, completion: nil)

        }
        else
        {
            let alertControllerX = UIAlertController(title: "elected Color : ", message:
                "BLUE", preferredStyle: .alert)
            alertControllerX.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertControllerX, animated: true, completion: nil)
        }
        
    
    
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

