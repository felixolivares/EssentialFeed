//
//  FeedLoaderStub.swift
//  EssentialAppTests
//
//  Created by José Félix Olivares Estrada on 04/10/24.
//

import EssentialFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result

    init(result: FeedLoader.Result) {
        self.result = result
    }

    public func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
