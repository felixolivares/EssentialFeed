//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by José Félix Olivares Estrada on 07/08/24.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}

