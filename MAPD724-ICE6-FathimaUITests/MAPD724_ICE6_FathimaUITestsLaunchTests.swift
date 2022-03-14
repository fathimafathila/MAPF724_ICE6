//
//  MAPD724_ICE6_FathimaUITestsLaunchTests.swift
//  MAPD724-ICE6-FathimaUITests
//
//  Created by Fathima Fathila on 2022-03-13.
//

import XCTest

class MAPD724_ICE6_FathimaUITestsLaunchTests: XCTestCase {

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
