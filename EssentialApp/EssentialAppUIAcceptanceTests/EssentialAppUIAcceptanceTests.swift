//
//  EssentialAppUIAcceptanceTests.swift
//  EssentialAppUIAcceptanceTests
//
//  Created by José Félix Olivares Estrada on 08/10/24.
//

import XCTest

final class EssentialAppUIAcceptanceTests: XCTestCase {

    func test_onLaunch_displayRemoteFeedWhenCustomerHasConnectivity() {
        let app = XCUIApplication()

        app.launch()

        XCTAssertEqual(app.cells.count, 22)
        XCTAssertEqual(app.cells.firstMatch.images.count, 1)
    }

}
