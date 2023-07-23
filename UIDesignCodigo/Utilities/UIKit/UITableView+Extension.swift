//
//  UITableView+Extension.swift
//  UIDesignCodigo
//
//  Created by Aung Ko Ko on 23/07/2023.
//

import Foundation
import UIKit

extension UITableView {
    
    func registerForCells(_ strIDs: String...) {
        strIDs.forEach { (strID) in
            register(UINib(nibName: strID, bundle: nil), forCellReuseIdentifier: strID)
        }
    }
    
    func registerForCells(_ strIDs: [String]) {
        strIDs.forEach { (strID) in
            register(UINib(nibName: strID, bundle: nil), forCellReuseIdentifier: strID)
        }
    }
    
    func dequeue<T: UITableViewCell>(_ aClass: T.Type) -> T {
        let name = aClass.className
        guard let cell = dequeueReusableCell(withIdentifier: name) as? T else {
            fatalError("`\(name)` is not registed")
        }
        return cell
    }
    
    func dequeue<T: UITableViewCell>(_ aClass: T.Type,
                                     for indexPath: IndexPath) -> T {
        let name = aClass.className
        guard let cell = dequeueReusableCell(withIdentifier: name, for: indexPath) as? T else {
            fatalError("`\(name)` is not registed")
        }
        return cell
    }
    
    func dequeue<T: UITableViewHeaderFooterView>(_ aClass: T.Type) -> T {
        let name = aClass.className
        guard let cell = dequeueReusableHeaderFooterView(withIdentifier: name) as? T else {
            fatalError("`\(name)` is not registed")
        }
        return cell
    }
}
