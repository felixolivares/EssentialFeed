//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by José Félix Olivares Estrada on 04/10/24.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
