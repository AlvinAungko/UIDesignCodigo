//
//  ViewController+TableView.swift
//  UIDesignCodigo
//
//  Created by Aung Ko Ko on 23/07/2023.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch sections[section] {
        case .categories:
            return 1
        case .segment:
            return 1
        case .roomOrRate:
            switch self.roomOrRateStatus {
            case .isRoom:
                return 2
            case .isRate:
                return 3
            }
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch sections[indexPath.section] {
        case .categories:
             let cell = tableView.dequeue(CategoryContainerTableViewCell.self, for: indexPath)
            return cell
        case .segment:
            let cell = tableView.dequeue(SegmentControlCell.self, for: indexPath)
            cell.delegate = self
           return cell
        case .roomOrRate:
            switch self.roomOrRateStatus {
            case .isRoom:
                let cell = tableView.dequeue(RoomTableViewCell.self, for: indexPath)
               return cell
            case .isRate:
                let cell = tableView.dequeue(RateTableViewCell.self, for: indexPath)
               return cell
            }
        }
    }
}
