//
//  FakeRefreshControl.swift
//  EssentialFeediOSTests
//
//  Created by José Félix Olivares Estrada on 08/10/24.
//

import UIKit

class FakeRefreshControl: UIRefreshControl {
    private var _isRefreshing = false

    override var isRefreshing: Bool { _isRefreshing }

    override func beginRefreshing() {
        _isRefreshing = true
    }

    override func endRefreshing() {
        _isRefreshing = false
    }
}
