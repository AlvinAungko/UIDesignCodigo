//
//  AutoHeightResizeTableView.swift
//  UIDesignCodigo
//
//  Created by Aung Ko Ko on 23/07/2023.
//

import Foundation
import UIKit

class AutoHeightResizeTableView: UITableView {
    override var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
    }
    
    override var contentSize: CGSize {
        didSet {
            self.invalidateIntrinsicContentSize()
            self.layoutIfNeeded()
        }
    }
    
    override func reloadData() {
        super.reloadData()
        self.invalidateIntrinsicContentSize()
        self.layoutIfNeeded()
    }
}
