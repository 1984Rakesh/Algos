
 class Program {
    func invertBinaryTree(tree: BST?) {
        if( tree == nil ){
            return
        }
        
        let temp = tree?.left
        tree?.left = tree?.right
        tree?.right = temp
        
        invertBinaryTree(tree: tree?.left)
        invertBinaryTree(tree: tree?.right)
    }
 }
