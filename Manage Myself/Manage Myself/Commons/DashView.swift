//
//  DashView.swift
//  Manage Myself
//
//  Created by Van Luu on 11/17/18.
//  Copyright © 2018 Luu Dinh Van. All rights reserved.
//

import UIKit

@IBDesignable
public class DashView: UIView {
  
  @IBInspectable var dashColor: UIColor = UIColor.black {
    didSet {
      dashLayer.strokeColor = dashColor.cgColor
    }
  }
  
  @IBInspectable var dashLength: Int = 8 {
    didSet {
      dashLayer.lineDashPattern = [dashLength, dashLength] as [NSNumber]
    }
  }
  
  @IBInspectable var dashWidth: CGFloat = 5 {
    didSet {
      dashLayer.lineWidth = dashWidth
    }
  }
  
  @IBInspectable var cornerRadius: CGFloat = 8 {
    didSet {
      dashLayer.cornerRadius = cornerRadius
    }
  }
  
  private var dashLayer: CAShapeLayer!
  
  public override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupView()
  }
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
    setupView()
  }
  
  func setupView() {
    dashLayer = CAShapeLayer()
    
    dashLayer.fillColor = UIColor.clear.cgColor
    dashLayer.strokeColor = dashColor.cgColor
    dashLayer.lineWidth = dashWidth
    dashLayer.lineJoin = .miter
    dashLayer.lineDashPattern = [dashLength, dashLength] as [NSNumber]
    self.layer.addSublayer(dashLayer)
    
    dashLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: cornerRadius).cgPath
    
  }
  
}
