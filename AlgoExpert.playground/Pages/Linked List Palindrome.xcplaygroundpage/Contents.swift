extension Program {
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
    
    func lastNode(_ head:LinkedList ) -> LinkedList {
        if let next = head.next {
            return lastNode(next)
        }
        else {
            return head
        }
    }
    
    func nodePreviousTo(_ head:LinkedList, previousTo:LinkedList) -> LinkedList {
        if ( head.next === previousTo ){
            return head
        }
        else {
            return nodePreviousTo(head.next!, previousTo: previousTo)
        }
    }
    
    //this is worst time log(n)
    func isPalindrome(head:LinkedList, tail:LinkedList) -> Bool {
        var returnValue : Bool = false
        if( head === tail ){
            returnValue = true
        }
        else if( head.value == tail.value ) {
            returnValue = true;
            if( head.next !== tail ) {
                returnValue = isPalindrome(head: head.next!,
                                           tail: nodePreviousTo(head.next!, previousTo: tail))
            }
        }
        return returnValue
    }
    
    func _isPlaindrome(_ leftHead:LinkedList, _ rightHead:LinkedList ) {
        
    }
    
    func linkedListPalindrome(_ head: LinkedList) -> Bool {
        let tail = lastNode(head)
        return isPalindrome( head: head, tail: tail)
    }
}

let list = Program.linkedListWithValues([0,1,2,2,1,0])
var isPalindrome = Program().linkedListPalindrome(list!)
