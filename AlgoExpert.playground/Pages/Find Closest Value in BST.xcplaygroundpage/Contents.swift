class Program {
    func _findClosestValueInBST(_ tree: BST, _ target: Int) -> (BST, Int)  {
        let selfValue =  abs(tree.value - target)
        var returnValue : (BST,Int) = (tree, selfValue)
        if( tree.left != nil && target < tree.value ){
            let leftValue = _findClosestValueInBST( tree.left! ,target)
            if( returnValue.1 > leftValue.1 ){
                returnValue = leftValue
            }
        }
        
        if( tree.right != nil && target > tree.value ){
            let rightValue = _findClosestValueInBST( tree.right!, target)
            if( returnValue.1 > rightValue.1 ){
                returnValue = rightValue
            }
        }
        
        return returnValue;
    }
    
    func findClosestValueInBST(tree: BST?, target: Int) -> Int {
        let returnValue : (BST,Int) = _findClosestValueInBST(tree!, target)
        return returnValue.0.value
    }
}

let bst = BST.create([10,5,15,2,5,13,22,1,14])
let bst2 = BST.create([100, 502, 55000, 1001, 4500, 204, 205, 207, 208, 206, 203, 5, 15, 22, 57, 60, 5, 2, 3, 1, 1, 1, 1, 1, -51, -403])
let closest = Program().findClosestValueInBST(tree: bst2, target: -70)
