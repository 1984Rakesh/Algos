import XCTest
@testable import DataStructures

final class DataStructuresTests: XCTestCase {
    func test_isEqual() {
        let ll1 = LinkedList.linkedListWithValues([1, 2, 3, 4])
        let ll2 = LinkedList.linkedListWithValues([1, 2, 3, 4])
        XCTAssertTrue(l1 == l2)
    }
    
    func test_isNotEqual() {
        let ll1 = LinkedList.linkedListWithValues([1, 2, 3, 4])
        let ll2 = LinkedList.linkedListWithValues([1, 2, 3])
        XCTAssertNotEqual(l2, l1)
    }
}
