class Program {
    
    static func _nodeDepths(_ node: BST, _ nodeLevel:Int) -> Int {
        var sum = nodeLevel
        if let left = node.left {
            sum += _nodeDepths( left, nodeLevel + 1)
        }
        
        if let right = node.right {
            sum += _nodeDepths( right, nodeLevel + 1)
        }
        return sum
    }
    
    static func nodeDepths(_ root: BST?) -> Int {
        return _nodeDepths( root!, 0)
    }
}

let bst2 = BST.create([100, 502, 55000, 1001, 4500, 204, 205, 207, 208, 206, 203, 5, 15, 22, 57, 60, 5, 2, 3, 1, 1, 1, 1, 1, -51, -403])
Program.nodeDepths(bst2)
