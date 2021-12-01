import XCTest
@testable import NodeSwap
import DataStructures

final class NodeSwapTests: XCTestCase {
    var program: NodeSwap!
    override func setUp() {
        program = NodeSwap()
    }
    
    func test_case1() {
        var ll1 = LinkedList.linkedListWithValues([0,1,2,3,4,5])
        let ll2 = LinkedList.linkedListWithValues([1,0,3,2,5,4])
        ll1 = program.nodeSwap(ll1!)
        XCTAssertEqual(ll1, ll2)
    }
    
    func test_case2() {
        var ll1 = LinkedList.linkedListWithValues([0])
        let ll2 = LinkedList.linkedListWithValues([0])
        ll1 = program.nodeSwap(ll1!)
        XCTAssertEqual(ll1, ll2)
    }
    
    func test_case3() {
        var ll1 = LinkedList.linkedListWithValues([0, 1])
        let ll2 = LinkedList.linkedListWithValues([1, 0])
        ll1 = program.nodeSwap(ll1!)
        XCTAssertEqual(ll1, ll2)
    }
    
    func test_case4() {
        var ll1 = LinkedList.linkedListWithValues([5,10,15,20,25,30])
        let ll2 = LinkedList.linkedListWithValues([10,5,20,15,30,25])
        ll1 = program.nodeSwap(ll1!)
        XCTAssertEqual(ll1, ll2)
    }
}
