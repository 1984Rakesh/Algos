import XCTest
@testable import RearrangeLinkedList
import DataStructures
import SwiftUI

final class RearrangeLinkedListTests: XCTestCase {
    var program: RearrangeLinkedList!
    
    func test_case1() {
        var ll1 = LinkedList.linkedListWithValues([3, 0, 5, 2, 1, 4])
        let ll2 = LinkedList.linkedListWithValues([0, 2, 1, 3, 5, 4])
        ll1 = RearrangeLinkedList.rearrangeLinkedList(ll1!, 3)
        XCTAssertEqual( ll1, ll2)
    }
    
    func test_case2() {
        var ll1 = LinkedList.linkedListWithValues([3, 0, 2, 1, 4, 5])
        let ll2 = LinkedList.linkedListWithValues([0, 2, 1, 3, 4, 5])
        ll1 = RearrangeLinkedList.rearrangeLinkedList(ll1!, 3)
        XCTAssertEqual( ll1, ll2)
    }
    
    func test_case6() {
        var ll1 = LinkedList.linkedListWithValues([0, 2, 4, 3, 5])
        let ll2 = LinkedList.linkedListWithValues([0, 2, 3, 4, 5])
        ll1 = RearrangeLinkedList.rearrangeLinkedList(ll1!, 3)
        XCTAssertEqual( ll1, ll2)
    }
    
    func test_case5() {
        var ll1 = LinkedList.linkedListWithValues([0, 3, 2, 1, 4, 5, 3, -1, -2, 3, 6, 7, 3, 2, -9000])
        let ll2 = LinkedList.linkedListWithValues([-9000, 0, 3, 2, 1, 4, 5, 3, -1, -2, 3, 6, 7, 3, 2])
        ll1 = RearrangeLinkedList.rearrangeLinkedList(ll1!, -9000)
        XCTAssertEqual( ll1, ll2)
    }
}
