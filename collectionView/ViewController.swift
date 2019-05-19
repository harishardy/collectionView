//
//  ViewController.swift
//  collectionView
//
//  Created by Harish Hardy on 19/05/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellX = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        if (indexPath.item % 2 == 0)
        {
            cellX.backgroundColor = UIColor.red
        }
        else
        {
            cellX.backgroundColor = UIColor.blue
        }
        
        return cellX
    }
    
    
    
    
  
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

