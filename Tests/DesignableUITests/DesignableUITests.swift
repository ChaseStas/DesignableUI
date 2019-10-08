import XCTest
@testable import DesignableUI

final class DesignableUITests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DesignableUI().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
