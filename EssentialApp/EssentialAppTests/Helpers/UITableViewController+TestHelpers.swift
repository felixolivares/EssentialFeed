//
//  UITableViewController+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by José Félix Olivares Estrada on 08/10/24.
//

import UIKit

extension UITableViewController {
    func replaceRefreshControlWithFakeForiOS17Support() {
        let fake = FakeRefreshControl()

        refreshControl?.allTargets.forEach { target in
            refreshControl?.actions(forTarget: target, forControlEvent: .valueChanged)?.forEach { action in
                fake.addTarget(target, action: Selector(action), for: .valueChanged)
            }
        }
        refreshControl = fake
    }
}
