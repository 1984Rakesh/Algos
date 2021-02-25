import Foundation

class Program {
    struct Stack<Element> : CustomDebugStringConvertible {
        var elements = [Element]()
        mutating func push(_ element:Element) {
            elements.append(element)
        }
        
        mutating func pop() -> Element? {
            let element = elements.last
            if element != nil {
                elements.removeLast()
            }
            return element
        }
        
        var count : Int {
            elements.count
        }
        
        var debugDescription: String {
            return elements.reduce( "" ) { (result, next) in
                var value = result
                value.append(",\(next)")
                return value
            }
        }
    }
    
    func solution1(_ string: String) -> Int {
        var stack = Stack<String>()
        var didMatch = false;
        for char in string {
            let strChar = String(char)
            if( char == "(" ){
                stack.push(strChar)
            }
            else if( strChar == ")" ){
                var lastItem : String? = stack.pop()
                if( lastItem != nil ){
                    var didPush = false;
                    if( lastItem == "(" ) {
                        stack.push(lastItem! + strChar)
                        didPush = true
                    }
                    else if( lastItem?.count ?? 0 > 1 ){
                        let lastToLastItem = stack.pop()
                        if( lastToLastItem == "(" ){
                            stack.push(lastItem! + lastToLastItem! + strChar)
                            didPush = true
                        }
                    }
                    
                    if( didPush == true ){
                        didMatch = true
                        repeat {
                            lastItem = stack.pop()
                            let lastToLastItem = stack.pop()
                            if( lastToLastItem != nil && lastToLastItem!.count > 1 ){
                                let newItem = lastItem! + lastToLastItem!
                                stack.push(newItem)
                            }
                            else {
                                if( lastToLastItem != nil ){
                                    stack.push(lastToLastItem!)
                                }
                                stack.push(lastItem!);
                                lastItem = nil
                            }
                        } while(lastItem != nil)
                    }
                    else {
                        stack.push(lastItem!)
                        stack.push(strChar)
                    }
                }
                else {
                    stack.push(strChar)
                }
            }
            print(stack)
        }
        var count = 0;
        if( didMatch == true ){
            let sortedElems = stack.elements.sorted{$0.count > $1.count}
            count = sortedElems.first?.count ?? 0
        }
        return count
    }
    
    func solution2(_ string: String) -> Int {
        var maxLength : Int = 0
        var idxStack = [-1]
        
        let indexedString = Array(string)
        for i in 0..<string.count {
            if( indexedString[i] == "(" ){
                idxStack.append(i)
            }
            else {
                idxStack.removeLast()
                if( idxStack.count == 0 ){
                    idxStack.append(i)
                }
                else {
                    let balancedSubStringStartIndex = idxStack[idxStack.count - 1]
                    let currentLength = i - balancedSubStringStartIndex
                    maxLength = max( maxLength, currentLength)
                }
            }
        }
        
        return maxLength
    }
    
    func longestBalancedSubstring(_ string: String) -> Int {
        let result = solution1(string)
        return result
    }
}

let result = Program().longestBalancedSubstring("((((((()()()())()))((())))()")
print("Result :: \(result)")
