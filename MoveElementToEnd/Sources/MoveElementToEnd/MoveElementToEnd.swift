public struct MoveElementToEnd {
    func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
        var index: Int = 0
        for _ in 0..<array.count {
            let value = array[index]
            if value == toMove {
                array.remove(at: index)
                array.append(value)
            }
            else {
                index += 1
            }
        }
        return array
    }
}
