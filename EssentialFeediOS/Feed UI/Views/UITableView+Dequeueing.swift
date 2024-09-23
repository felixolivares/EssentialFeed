//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by José Félix Olivares Estrada on 20/09/24.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
