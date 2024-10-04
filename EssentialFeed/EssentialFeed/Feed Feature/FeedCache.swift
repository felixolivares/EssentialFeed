//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by José Félix Olivares Estrada on 04/10/24.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
