//
//  TagCollectionCell.swift
//  Social App
//
//  Created by Osama Ramadan on 03/05/2023.
//

import UIKit

class PostTagCell: UICollectionViewCell {
    @IBOutlet weak var tagNameLabel: UILabel!
    
    @IBOutlet weak var backView: UIView!{
        didSet{
            backView.layer.cornerRadius = 8
        }
    }
}

