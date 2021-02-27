class Program {
    func solution2(_ head: LinkedList) -> LinkedList {
        var currentHead : LinkedList? = head
        var previous : LinkedList? = nil
        
        while currentHead != nil {
            let nextNode = currentHead?.next
            currentHead?.next = previous
            previous = currentHead
            currentHead = nextNode
        }
        
        return previous!
    }
    
    func solution1(_ head: LinkedList) -> LinkedList {
        let head = _reverseLinkedList(head)
        return head.1
    }
    
    func _reverseLinkedList(_ head: LinkedList) -> (LinkedList,LinkedList) {
        if( head.next == nil ){
            return (head, head)
        }
        else {
            let next = _reverseLinkedList( head.next! )
            next.0.next = head
            head.next = nil
            return ( head, next.1 )
        }
    }
    
    func reverseLinkedList(_ head: LinkedList) -> LinkedList {
        let head = solution2(head)
        return head
    }
}

var list : LinkedList? = LinkedList.linkedListWithValues([0, 1, 2, 3, 4, 5])
list = Program().reverseLinkedList(list!)
print(list)
