import XCTest
@testable import AlertToast

final class AlertToastTests: XCTestCase {
    
    func testInit() {
      #if !os(watchOS)
        let toast = AlertToast(type: .regular, title: "Title", subTitle: "Subtitle")
        XCTAssertEqual(toast.type, .regular)
        XCTAssertEqual(toast.title, "Title")
        XCTAssertEqual(toast.subTitle, "Subtitle")
      #endif
    }

    static var allTests = [
        ("testInit", testInit),
    ]
}
