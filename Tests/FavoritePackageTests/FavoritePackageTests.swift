import XCTest
@testable import FavoritePackage

final class FavoritePackageTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FavoritePackage().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
