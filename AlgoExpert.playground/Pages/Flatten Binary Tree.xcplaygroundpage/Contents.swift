class Program {
    class BinaryTree {
        var value: Int
        var left: BinaryTree?
        var right: BinaryTree?
        
        init(value: Int) {
            self.value = value
            left = nil
            right = nil
        }
    }
    
    typealias ExtremeNodes = (leftMost:BinaryTree, rightMost:BinaryTree)
    func _flattenBinaryTree(root: BinaryTree) -> ExtremeNodes {
        var flat_left : ExtremeNodes? = nil
        if(root.left != nil) {
            flat_left = _flattenBinaryTree(root:root.left!)
        }
                
        var flat_right : ExtremeNodes? = nil
        if( root.right != nil ){
            flat_right = _flattenBinaryTree(root:root.right!)
        }
        
        root.left = flat_left?.rightMost
        flat_left?.rightMost.right = root
        root.right = flat_right?.leftMost
        flat_right?.leftMost.left = root
        
        return (flat_left?.leftMost ?? root , flat_right?.rightMost ?? root)
    }
    
    func flattenBinaryTree(root: BinaryTree) -> BinaryTree {
        var flatbst : ExtremeNodes = _flattenBinaryTree(root:root)
        return flatbst.leftMost
    }
}

let list = [1, 2, 3, 4, 5, 6, 7, 8]
let bst = BST.create(list)
print(bst)
