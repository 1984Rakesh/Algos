import Foundation

public class BST : CustomDebugStringConvertible{
    public private(set) var value: Int
    public var left: BST?
    public var right: BST?
    
    public var debugDescription: String {
        return "\(left?.debugDescription ?? "") <- \(value) -> \(right?.debugDescription ?? "")"
    }
    
    public init(value: Int) {
        self.value = value
        left = nil
        right = nil
    }
    
    private static func _create(_ value:[Int]) -> BST {
        let valueCount = value.count
        let midValueIndex : Int = valueCount / 2
        print(midValueIndex)
        let midValue = value[midValueIndex]
        let bst = BST(value: midValue)
        
        if( midValueIndex > 0 ){
            let leftSide = Array(value[0..<midValueIndex])
            if( leftSide.count > 0 ) {
                bst.left = _create(leftSide)
            }
        }
        
        if( (midValueIndex+1) < valueCount ){
            let rightSide = Array(value[(midValueIndex+1)..<valueCount])
            if( rightSide.count > 0 ){
                bst.right = _create(rightSide)
            }
        }                
        return bst
    }
        
    public static func create(_ value:[Int]) -> BST {
        let sortedValues = value.sorted(by: < )
        return _create(sortedValues)
    }
}
