public class BST {
    public private(set) var value: Int
    public var left: BST?
    public var right: BST?
    
    public init(value: Int) {
        self.value = value
        left = nil
        right = nil
    }
}
