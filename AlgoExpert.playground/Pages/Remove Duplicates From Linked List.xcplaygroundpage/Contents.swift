import 

class Program {
    class LinkedList : CustomDebugStringConvertible{
        var value: Int
        var next: LinkedList?
        
        init(value: Int) {
            self.value = value
            next = nil
        }
        
        var debugDescription: String {
            return "\(value), \(next?.debugDescription ?? "$")"
        }
    }
    
    func removeDuplicatesFromLinkedList(_ linkedList: LinkedList) -> LinkedList {
        var currentNode : LinkedList? = linkedList
        var previousNode : LinkedList? = nil
        repeat {
            if( previousNode?.value == currentNode?.value ){
                previousNode?.next = currentNode?.next
            }
            else {
                previousNode = currentNode
            }
            currentNode = currentNode?.next
        } while( currentNode != nil )
        
        return linkedList
    }
    
    static func linkedListWithValues(_ values:[Int]) -> LinkedList? {
        guard values.count > 0 else {
            return nil
        }
        var head : LinkedList? = nil
        var previousNode : LinkedList? = nil
        var index = 0
        repeat {
            let newNode = LinkedList(value: values[index])
            if( head == nil ){
                head = newNode
            }
            previousNode?.next = newNode
            previousNode = newNode
            index += 1
        } while index < values.count
        
        return head
    }
}

let list = Program.linkedListWithValues([1,1,1,3,4,5,6,6,7,7,8,9,9])
Program().removeDuplicatesFromLinkedList(list!)
