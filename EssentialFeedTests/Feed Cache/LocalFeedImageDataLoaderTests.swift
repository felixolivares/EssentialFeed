//
//  LocalFeedImageDataLoaderTests.swift
//  EssentialFeedTests
//
//  Created by José Félix Olivares Estrada on 03/10/24.
//

import XCTest
import EssentialFeed

final class LocalFeedImageDataLoader {
    init (store: Any) {

    }
}

class LocalFeedImageDataLoaderTests: XCTestCase {
    
    func test_init_doesNotMessageStoreUponCreation() {
        let (_, store) = makeSut()

        XCTAssertTrue(store.receivedMessages.isEmpty)
    }

    //MARK : - Helpers

    private func makeSut(currentDate: @escaping () -> Date = Date.init, file: StaticString = #file, line: UInt = #line) -> (sut: LocalFeedImageDataLoader, store: FeedStoreSpy) {
        let store = FeedStoreSpy()
        let sut = LocalFeedImageDataLoader(store: store)
        trackForMemoryLeaks(store, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, store)
    }

    private class FeedStoreSpy {
        let receivedMessages = [Any]()
    }
}
