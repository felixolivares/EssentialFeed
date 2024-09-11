//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by José Félix Olivares Estrada on 07/08/24.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}

