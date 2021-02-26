class Program {
    enum Direction : Int {
        case up = -1
        case down = 1
        
        func reverse() -> Direction {
            switch self {
            case .down:
                return .up
                
            case .up:
                return .down
            }
        }
    }
    
    func zigZagTraverse(array: [[Int]]) -> [Int] {
        let numRows = array.count
        let numColumns = array.first?.count ?? 0
        let length = numRows * numColumns
        var rowIndex = 0
        var columnIndex = 0
        var returnArray : [Int] = []
        var direction : Direction = .down
        for _ in 0..<length {
            let value = array[rowIndex][columnIndex]
            returnArray.append(value)
            print("{\(rowIndex),\(columnIndex)} :: \(value)")
            var didHitEdge = false;
            switch direction {
            case .up:
                if( columnIndex == (numColumns - 1)){
                    rowIndex += 1
                    rowIndex = min( rowIndex, (numRows - 1))
                    didHitEdge = true
                } else if( rowIndex == 0 ){
                    columnIndex += 1
                    columnIndex = min( columnIndex, (numColumns - 1))
                    didHitEdge = true
                }
                
            case .down:
                if( rowIndex == (numRows - 1)) {
                    columnIndex += 1
                    columnIndex = min( columnIndex, (numColumns - 1))
                    didHitEdge = true
                }else  if( columnIndex == 0 ){
                    rowIndex += 1
                    rowIndex = min( rowIndex, (numRows - 1))
                    didHitEdge = true
                }
            }
            
            if( didHitEdge ){
                direction = direction.reverse()
            }
            else {
                rowIndex += (1 * direction.rawValue)
                columnIndex += (1 * -direction.rawValue)
            }
            
        }
        return returnArray
    }
}

let array = [
    [1, 3, 4, 10],
    [2, 5, 9, 11],
    [6, 8, 12, 15],
    [7, 13, 14, 16]
]

let program = Program()
let op = program.zigZagTraverse(array:array)
print(op)
