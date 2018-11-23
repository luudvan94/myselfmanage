//
//  FeatureCollectionView.swift
//  Manage Myself
//
//  Created by Van Luu on 11/17/18.
//  Copyright © 2018 Luu Dinh Van. All rights reserved.
//

import UIKit

class FeatureCollectionView: UICollectionView {
  
  var featuresArray: [String] = []
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupView()
  }
  
  override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    super.init(frame: frame, collectionViewLayout: layout)
    setupView()
  }
  
  func setupView() {
    register(nibWithCellClass: FeatureCollectionViewCell.self)
    dataSource = self
  }
  
}

extension FeatureCollectionView: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = dequeueReusableCell(withReuseIdentifier: "FeatureCollectionViewCell", for: indexPath)
    
    return cell
  }
  
  
  override var numberOfSections: Int {
    return 1
  }
}


