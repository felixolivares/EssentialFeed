//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by José Félix Olivares Estrada on 07/08/24.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}

