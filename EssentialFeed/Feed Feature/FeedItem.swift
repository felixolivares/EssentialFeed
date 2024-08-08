//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by José Félix Olivares Estrada on 07/08/24.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
