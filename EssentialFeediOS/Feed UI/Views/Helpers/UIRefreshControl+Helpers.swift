//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by José Félix Olivares Estrada on 30/09/24.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        if !isRefreshing { endRefreshing() }
    }
}
