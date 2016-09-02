//
//  MyCell.swift
//  Sapporo-Example
//
//  Created by Hiroaki Egashira on 8/30/16.
//  Copyright © 2016 hiroaki.egashira. All rights reserved.
//

import UIKit
import Sapporo

class MyCellModel: SACellModel {

    init(){
        let size = CGSize(width: 100, height: 100)
        super.init(cellType: MyCell.self, size: size, selectionHandler: nil)
    }
}

class MyCell: SACell, SACellType {
    typealias CellModel = MyCellModel
    
    override func configure() {
        super.configure()
        
    }
}
