//
//  AMContainerTableCell.swift
//  AMAppkit
//
//  Created by Ilya Kuznetsov on 12/27/17.
//  Copyright © 2017 Arello Mobile. All rights reserved.
//

import Foundation

class AMContainerTableCell: AMBaseTableViewCell {
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.contentView.subviews.forEach { $0.removeFromSuperview() }
    }
    
    func attach(view: UIView) {
        backgroundColor = UIColor.clear
        selectionStyle = .none
        view.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
        contentView.addSubview(view)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|", options: [], metrics: nil, views: ["view":view]))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|", options: [], metrics: nil, views: ["view":view]))
    }
}
