//
//  LoadFeedFromCacheUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by José Félix Olivares Estrada on 29/08/24.
//

import XCTest
import EssentialFeed

class LoadFeedFromCacheUseCaseTests: XCTestCase {

    func test_init_doesNotMessageStoreUponCreation() {
        let (_, store) = makeSUT()

        XCTAssertEqual(store.receivedMessages, [])
    }
    
    //MARK: - Helpers

    private func makeSUT(currentDate: @escaping () -> Date = Date.init  , file: StaticString = #filePath, line: UInt = #line) -> (sut: LocalFeedLoader, store: FeedStoreSpy) {
        let store = FeedStoreSpy()
        let sut = LocalFeedLoader(store: store, currentDate: currentDate)
        trackForMemoryLeaks(store, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, store)
    }

    private class FeedStoreSpy: FeedStore {
        enum ReceivedMessages: Equatable {
            case deleteCachedFeed
            case insert([LocalFeedImage], Date)
        }

        private(set) var receivedMessages = [ReceivedMessages]()

        private var deletionCompletions = [DeletionCompletion]()

        private var insertionCompletions = [InsertCompletion]()

        func deleteCachedFeed(completion: @escaping DeletionCompletion) {
            deletionCompletions.append(completion)
            receivedMessages.append(.deleteCachedFeed)
        }

        func completeDeletion(with error: Error, at index: Int = 0) {
            deletionCompletions[index](error)
        }

        func completeDeletionSuccesfully(at index : Int = 0) {
            deletionCompletions[index](nil)
        }

        func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertCompletion) {
            insertionCompletions.append(completion)
            receivedMessages.append(.insert(feed, timestamp))
        }

        func completeInsertion(with error: Error, at index: Int = 0) {
            insertionCompletions[index](error)
        }

        func completeInsertionSuccessfully(at index: Int = 0) {
            insertionCompletions[index](nil)
        }
    }
}
