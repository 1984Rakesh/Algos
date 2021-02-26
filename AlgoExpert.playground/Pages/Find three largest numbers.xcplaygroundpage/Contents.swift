class Program {
    func findNLargestNumbers( array:[Int], n:Int ) -> [Int] {
        var nLargestNums = [Int]()
        for i in 0..<array.count {
            var value = array[i]
            var didInsert = false
            for j in 0..<nLargestNums.count {
                var value2 = nLargestNums[j]
                if( value < value2 ){
                    nLargestNums.insert(value, at: j)
                    didInsert = true;
                    break
                }
            }
            
            if( didInsert == false ){
                nLargestNums.append(value)
            }
            
            if( nLargestNums.count > n ){
                nLargestNums.removeFirst()
            }
        }
        return nLargestNums
    }
    
    func findThreeLargestNumbers(array: [Int]) -> [Int] {
        return findNLargestNumbers(array:array, n:3)
    }
}

let list = [-1, -2, -3, -7, -17, -27, -18, -541, -8, -7, 7]
Program().findThreeLargestNumbers(array:list)
