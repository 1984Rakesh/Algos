extension Program {
    private func solution1(_ array: inout [Int], _ targetSum: Int) -> [Int] {
        for (index, value) in array.enumerated() {
            let secondArray = array[(index + 1)...]
            for value2 in secondArray {
                if( value + value2 == targetSum ) {
                    return [value, value2]
                }
            }
        }
        return []
    }
    
    private func solution2(_ array: inout [Int], _ targetSum: Int) -> [Int] {
        var possibleMatch = [Int:Bool]()
        for number in array {
            let otherNumber = targetSum - number
            if( (possibleMatch[otherNumber] ?? false) == true ){
                return [number, otherNumber]
            }
            else {
                possibleMatch[number] = true
            }
        }
        return []
    }
    
    func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
        solution1( &array, targetSum)
    }
}

let program = Program()
var array = [3, 5, -4, 8, 11, 1, 6, 10, -1]
let targetSum = 10
program.twoNumberSum( &array, targetSum)
