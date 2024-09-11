//
//  FeedCachePolicy.swift
//  EssentialFeed
//
//  Created by José Félix Olivares Estrada on 02/09/24.
//

import Foundation

internal final class FeedCachePolicy {
    private init() {}
    private static let calendar = Calendar(identifier: .gregorian)

    private static var maxCachedAgeInDays: Int {
        return 7
    }

    internal static func validate(_ timestamp: Date, against date: Date) -> Bool {
        guard let maxCachedAge = calendar.date(byAdding: .day, value: maxCachedAgeInDays, to: timestamp) else {
            return false
        }

        return date < maxCachedAge
    }
}
