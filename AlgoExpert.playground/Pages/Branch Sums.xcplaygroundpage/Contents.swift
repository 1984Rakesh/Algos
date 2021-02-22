
class Program {
    func _branchSums(_ root: BST,
                     _ currentBranchSum:Int,
                     _ finalSums:inout [Int]) {
        let value = root.value + currentBranchSum
        if let left = root.left {
            _branchSums( left, value, &finalSums)
        }
        
        if let right = root.right {
            _branchSums( right, value, &finalSums)
        }
        
        if( root.left === nil && root.right === nil ){
            finalSums.append(value)
        }
    }
    
    func branchSums(root: BST) -> [Int] {
        var sums : [Int] = [Int]()
        _branchSums( root, 0, &sums)
        return sums
    }
}

let bst2 = BST.create([100, 502, 55000, 1001, 4500, 204, 205, 207, 208, 206, 203, 5, 15, 22, 57, 60, 5, 2, 3, 1, 1, 1, 1, 1, -51, -403])
let sums = Program().branchSums(root:bst2)

