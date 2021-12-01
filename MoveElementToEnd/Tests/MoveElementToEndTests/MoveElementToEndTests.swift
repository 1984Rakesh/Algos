import XCTest
@testable import MoveElementToEnd
import SwiftUI

final class MoveElementToEndTests: XCTestCase {
    var program: MoveElementToEnd?
    
    override func setUp() {
        program = MoveElementToEnd()
    }
    
    func test_case1() {
        var array = [2, 1, 2, 2, 2, 3, 4, 2]
        _ = program?.moveElementToEnd(&array, 2)
        XCTAssertEqual(array, [1,3,4,2,2,2,2,2])
    }
    
    func test_case2() {
        var array:[Int] = []
        _ = program?.moveElementToEnd(&array, 3)
        XCTAssertEqual(array, [])
    }
    
    func test_case3() {
        var array:[Int] = [1, 2, 4, 5, 6]
        _ = program?.moveElementToEnd(&array, 3)
        XCTAssertEqual(array, [1, 2, 4, 5, 6])
    }
    
    override func tearDown() {
        program = nil
    }
}
