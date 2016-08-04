//
//  MainVC.swift
//  Taco Pop App
//
//  Created by Kasey Schlaudt on 8/3/16.
//  Copyright © 2016 coprograming.com. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {
    
    @IBOutlet weak var header: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ds: DataService = DataService.instance

    override func viewDidLoad() {
        super.viewDidLoad()

        ds = DataService.instance
        ds.delegate = self
        ds.loadDeliciousTacoData()
        ds.tacoArray.shuffel()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        header.addDropShadow()
        
        /*let nib = UINib(nibName: "TacoCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        */
        collectionView.register(TacoCell.self)
    }
    
    func deliciousTacoDataloaded() {
        print("delicious taco loaded!")
        collectionView.reloadData()
    }
    
}
    extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        /*if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            cell.configureCell(taco: ds.tacoArray[indexPath.row])
            return cell
        } else {
            return UICollectionViewCell()
        }*/
        
        let cell = collectionView.dequeueReusableCell(forIndexpath: indexPath) as TacoCell
        cell.configureCell(taco: ds.tacoArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shake()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
}
