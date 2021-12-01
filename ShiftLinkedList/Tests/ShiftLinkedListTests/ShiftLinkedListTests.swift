import XCTest
import DataStructures

@testable import ShiftLinkedList

final class ShiftLinkedListTests: XCTestCase {
    func test_case_1() throws {
        let l1 = LinkedList.linkedListWithValues([0,1,2,3,4,5])
        let l2 = LinkedList.linkedListWithValues([4,5,0,1,2,3])
        let result = ShiftLinkedList.shiftLinkedList( l1!, 2)
        XCTAssertEqual(result, l2)
    }
    
    func test_case_2() throws {
        let l1 = LinkedList.linkedListWithValues([0,1,2,3,4,5])
        let l2 = LinkedList.linkedListWithValues([2,3,4,5,0,1])
        let result = ShiftLinkedList.shiftLinkedList( l1!, -2)
        XCTAssertEqual(result, l2)
    }
}

//        ShiftLinkedList.shiftLinkedList(LinkedList.linkedListWithValues([0,1,2,3,4,5])!, 8)
//        ShiftLinkedList.shiftLinkedList(LinkedList.linkedListWithValues([0,1,2,3,4,5])!, -8)
//        ShiftLinkedList.shiftLinkedList(LinkedList.linkedListWithValues([0,1,2,3,4,5])!, 6)
//        ShiftLinkedList.shiftLinkedList(LinkedList.linkedListWithValues([0,1,2,3,4,5])!, -6)
