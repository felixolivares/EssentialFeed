//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by José Félix Olivares Estrada on 08/10/24.
//

import UIKit

extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
