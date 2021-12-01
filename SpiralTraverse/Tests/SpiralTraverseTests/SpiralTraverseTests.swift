import XCTest
@testable import SpiralTraverse

final class SpiralTraverseTests: XCTestCase {
    var program: SpiralTraverse!
    override func setUp() {
        program = SpiralTraverse()
    }
    
    func test_case1() {
        let array = [
            [1, 2, 3, 4],
            [12, 13, 14, 5],
            [11, 16, 15, 6],
            [10, 9, 8, 7]
          ]
        let result = program.spiralTraverse(array: array)
        XCTAssertEqual( result, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16])
    }
    
    func test_case2() {
        let array = [
            [1]
          ]
        let result = program.spiralTraverse(array: array)
        XCTAssertEqual( result, [1])
    }
    
    func test_case3() {
        let array = [
            [1, 2],
            [4, 3]
          ]
        let result = program.spiralTraverse(array: array)
        XCTAssertEqual( result, [1,2,3,4])
    }
    
    func test_case8() {
        let array = [[1, 2, 3, 4],
                     [10, 11, 12, 5],
                     [9, 8, 7, 6]]
        let result = program.spiralTraverse(array: array)
        XCTAssertEqual( result, [1,2,3,4,5,6,7,8,9,10,11,12])
    }
}
