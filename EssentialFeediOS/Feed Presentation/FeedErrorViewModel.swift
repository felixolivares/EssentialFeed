//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by José Félix Olivares Estrada on 30/09/24.
//

struct FeedErrorViewModel {
    let message: String?

    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
