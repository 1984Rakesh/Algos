
extension Program {
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
}

let list = LinkedList.linkedListWithValues([1,1,1,3,4,5,6,6,7,7,8,9,9])
Program().removeDuplicatesFromLinkedList(list!)
