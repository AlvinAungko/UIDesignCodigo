//
//  SegmentControlCell.swift
//  UIDesignCodigo
//
//  Created by Aung Ko Ko on 23/07/2023.
//

import UIKit

class SegmentControlCell: UITableViewCell {

    var delegate: ViewDelegate?
    @IBOutlet weak var segmentControl: CustomSegmentedControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        segmentControl.addTarget(self, action: #selector(handleSegmentAction(_:)), for: .valueChanged)
        segmentControl.setTitle("Room", forSegmentAt: 0)
        segmentControl.setTitle("Rate", forSegmentAt: 1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @objc func handleSegmentAction(_ sender: UISegmentedControl) {
        self.delegate?.didTapSegment(value: sender.selectedSegmentIndex)
    }
    
}
