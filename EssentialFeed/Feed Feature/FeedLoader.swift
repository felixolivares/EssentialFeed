//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by José Félix Olivares Estrada on 07/08/24.
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    associatedtype Error: Swift.Error
    func load(completion: @escaping (LoadFeedResult<Error>) -> Void)
}

