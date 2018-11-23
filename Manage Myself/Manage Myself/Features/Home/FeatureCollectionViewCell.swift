//
//  FeatureCollectionViewCell.swift
//  Manage Myself
//
//  Created by Van Luu on 11/17/18.
//  Copyright © 2018 Luu Dinh Van. All rights reserved.
//

import UIKit

class FeatureCollectionViewCell: UICollectionViewCell {
  
//  @IBOutlet var contentView: UIView!
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupView()
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
  
  func setupView() {
    Bundle.main.loadNibNamed("FeatureCollectionViewCell", owner: self, options: nil)
    addSubview(contentView)
    contentView.frame = self.bounds
    contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
  }
    
}
