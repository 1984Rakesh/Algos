class Program {
    func _productSum(_ array: [Any], _ level:Int) -> Int {
        return array.reduce( 0 ) { ( intermiediateResult, next) in
            var result = intermiediateResult
            if let innerarray = next as? [Any] {
                result += (level + 1) * _productSum( innerarray, level + 1)
            }
            else {
                result += (next as? Int) ?? 0
            }
            return result
        }
    }
    
    func productSum(_ array: [Any]) -> Int {
        return _productSum( array, 1)
    }
}

let input = [5, 2, [7, -1], 3, [6,[-13,8],4]] as [Any]
let sum = Program().productSum(input)
