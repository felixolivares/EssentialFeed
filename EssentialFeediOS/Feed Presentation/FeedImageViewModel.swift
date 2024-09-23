//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by José Félix Olivares Estrada on 18/09/24.
//

import Foundation
import EssentialFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool

    var hasLocation: Bool {
        return location != nil
    }
}
