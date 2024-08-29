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

    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    func insert(_ items: [FeedItem ], timestamp: Date, completion: @escaping InsertCompletion)
}
