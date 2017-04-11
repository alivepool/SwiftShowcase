//
//  ViewController.swift
//  SwiftShowcase
//
//  Created by Ameya Jathar on 31/01/17.
//  Copyright © 2017 Ameya. All rights reserved.
//

import UIKit
import Alamofire

enum SubApps: String {
    case TraveLogr = "Travel log"
}

class ViewController: UICollectionViewController {

    private let appList:[String] = ["Travel log"]
    private let cellReusableIdentifier = "HomeCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UICollectionViewDataSource methods
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReusableIdentifier, for: indexPath) as! AppListCollectionViewCell
        cell.appNameLabel.text = appList[indexPath.row]
        return cell
    }
    
    //MARK: UICollectionViewDelegate Methods
    
}

