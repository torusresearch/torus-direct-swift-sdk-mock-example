//
//  torus_direct_swift_sdk_mock_exampleUITestsLaunchTests.swift
//  torus-direct-swift-sdk-mock-exampleUITests
//
//  Created by Michael Lee on 6/10/2021.
//

import XCTest

class torus_direct_swift_sdk_mock_exampleUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
