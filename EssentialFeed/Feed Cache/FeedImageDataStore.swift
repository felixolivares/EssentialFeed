//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by José Félix Olivares Estrada on 03/10/24.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
