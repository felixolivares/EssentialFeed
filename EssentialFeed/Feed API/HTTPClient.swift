//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by José Félix Olivares Estrada on 13/08/24.
//

import Foundation

public protocol HTTPClient {
    typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>

    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropiate threads, if needed.
    func get(from url: URL, completion: @escaping (Result) -> Void)
}
