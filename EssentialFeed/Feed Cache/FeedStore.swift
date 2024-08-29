//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by José Félix Olivares Estrada on 28/08/24.
//

import Foundation

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertCompletion = (Error?) -> Void
    typealias RetrievalCompletion = (Error?) -> Void

    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    func insert(_ feed  : [LocalFeedImage], timestamp: Date, completion: @escaping InsertCompletion)
    func retrieve(completion: @escaping RetrievalCompletion)
}
