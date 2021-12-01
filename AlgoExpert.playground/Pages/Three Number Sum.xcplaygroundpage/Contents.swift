class Program {
    func nNumberSum(array: [Int],
                    targetSum: Int,
                    level:Int,
                    maxLevel:Int,
                    offset:Int,
                    matches:inout [[Int]],
                    previousValue:[Int]) {
        for i in offset..<(array.count - (maxLevel - level)) {
            var values = previousValue
            values.append(array[i])
            let value = values.reduce(0, + )
            if( value > targetSum ){
                break
            }
            if level < maxLevel {
                nNumberSum(array: array,
                           targetSum: targetSum,
                           level: level + 1,
                           maxLevel: maxLevel,
                           offset: i + 1,
                           matches: &matches,
                           previousValue: values)
            }
            else {
                if( value == targetSum ){
                    matches.append(values)
                }
            }
        }
    }
    
    func threeNumberSum(array: inout [Int], targetSum: Int) -> [[Int]] {
        var matches = [[Int]]()
        let sorted = array.sorted(by: < )
        nNumberSum(array:sorted, targetSum: targetSum, level:0, maxLevel:3, offset: 0, matches: &matches, previousValue: [])
        return matches
    }
    
    func fourNumberSum(array:[Int], targetSum:Int) -> [[Int]] {
        var allPairSums = [Int:[[Int]]]()
        
        var quadruplets = [[Int]]()
        
        for i in 1..<array.count - 1 {
            for j in i + 1 ..< array.count {
                let currentSum = array[i] + array[j]
                let difference = targetSum - currentSum
                
                if allPairSums.keys.contains(difference) {
                    for pair in allPairSums[difference]! {
                        quadruplets.append(pair + [array[i], array[j]])
                    }
                }
            }
            
            for k in 0..<i {
                let currentSum = array[k] + array[i]
                
                if !allPairSums.keys.contains(currentSum) {
                    allPairSums[currentSum] = [[array[k], array[i]]]                  
                }
                else {
                    allPairSums[currentSum]!.append([array[k], array[i]])
                }
            }
        }
        return quadruplets
    }
}

let prog = Program()
//var array = [12, 3, 1, 2, -6, 5, -8, 6]
var array = [7, 6, 4, -1, 1, 2]
var prods = prog.threeNumberSum(array: &array, targetSum: 16)
print(prods)
prods = prog.fourNumberSum(array: array, targetSum: 16)
print(prods)
