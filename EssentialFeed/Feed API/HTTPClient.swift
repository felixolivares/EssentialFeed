//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by José Félix Olivares Estrada on 13/08/24.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
