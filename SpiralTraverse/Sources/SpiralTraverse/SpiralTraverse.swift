public struct SpiralTraverse {
    func spiralTraverse(array: [[Int]]) -> [Int] {
        var rowStart: Int = 0
        var columnStart: Int = 0
        var returnValues: [Int] = [Int]()
        var rowCount: Int = array.count
        var columnCount: Int = 0
        if rowCount > 0 {
            columnCount = array[0].count
        }
        let totalValue = rowCount * columnCount
        
        while totalValue > returnValues.count {
            for colIndex in stride(from: columnStart, to: columnCount, by: 1) {
                returnValues.append(array[rowStart][colIndex])
            }
            rowStart += 1
            
            for rowIndex in stride(from: rowStart, to: rowCount, by: 1) {
                returnValues.append(array[rowIndex][columnCount - 1])
            }
            columnCount -= 1
            
            for colIndex in stride(from: columnCount-1, to: columnStart-1, by: -1) {
                if totalValue == returnValues.count {
                    break
                }
                returnValues.append(array[rowCount - 1][colIndex])
            }
            rowCount -= 1
            
            for rowIndex in stride(from: rowCount-1, to: rowStart-1, by: -1) {
                if totalValue == returnValues.count {
                    break
                }
                returnValues.append(array[rowIndex][columnStart])
            }
            columnStart += 1
        }
        
        return returnValues
    }
}
