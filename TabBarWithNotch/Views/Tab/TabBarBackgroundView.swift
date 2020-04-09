//
//  TabBarBackgroundView.swift
//  TabBarWithNotch
//
//  Created by Johnstone Ananda on 08/04/2020.
//  Copyright © 2020 Johnstone. All rights reserved.
//

import UIKit

class TabBarBackgroundView: UIView {
    // MARK: Constants
    private let height: CGFloat = 103
    private let startY: CGFloat = 20
    private let startAngle: CGFloat = CGFloat(218.0).toRadians()
    private let endAngle: CGFloat = CGFloat(322.0).toRadians()
    private let shadowLayer = CAShapeLayer()
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: frame.origin.x, y: frame.origin.y - startY, width: frame.size.width, height: height))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public methods
    // IMPORTANT: Always add this methods after add this sub view to a super view
    func configureView() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: startY))
        
        path.addArc(withCenter: CGPoint(x: self.frame.size.width/2, y: self.frame.size.height / 2),
                    radius: height / 2,
                    startAngle: startAngle,
                    endAngle: endAngle,
                    clockwise: true)
        path.addLine(to: CGPoint(x: self.frame.size.width, y: startY))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: 0, y: self.frame.size.height))
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.frame = self.bounds
        shapeLayer.path = path.cgPath
        self.backgroundColor = UIColor.white
        self.layer.mask = shapeLayer
        
        shadowLayer.path = path.cgPath
        shadowLayer.frame = self.frame
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.shadowOpacity = 0.2
        shadowLayer.shadowOffset = CGSize(width: 0, height: 1)
        shadowLayer.shadowRadius = 4
        superview?.layer.insertSublayer(shadowLayer, below: layer)
    }
    
    override func removeFromSuperview() {
        super.removeFromSuperview()
        shadowLayer.removeFromSuperlayer()
    }
}
