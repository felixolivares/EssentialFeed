//
//  UIImageView+Animations.swift
//  EssentialFeediOS
//
//  Created by José Félix Olivares Estrada on 20/09/24.
//

import UIKit

extension UIImageView {
    func setImageAnimation(_ newImage: UIImage?) {
        image = newImage

        guard newImage != nil else { return }

        alpha = 0
        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
        }
    }
}
