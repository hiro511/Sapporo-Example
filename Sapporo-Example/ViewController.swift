//
//  ViewController.swift
//  Sapporo-Example
//
//  Created by Hiroaki Egashira on 8/30/16.
//  Copyright © 2016 hiroaki.egashira. All rights reserved.
//

import UIKit
import Sapporo

class ViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    lazy var sapporo: Sapporo = { [unowned self] in
        return Sapporo(collectionView: self.collectionView)
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let cellmodels: [MyCellModel] = Array(count: 4,  repeatedValue: MyCellModel())
        
        let section = SASection()
        section.inset = UIEdgeInsets(top: 30, left: 10, bottom: 10, right: 10)
        section.minimumLineSpacing = 10
        
        sapporo
            .registerCellByNib(MyCell)
            .setLayout(SAFlowLayout())
        
        sapporo
            .reset(section)
            .bump()
        
        section
            .reset(cellmodels)
            .bump()
        
    }

}

