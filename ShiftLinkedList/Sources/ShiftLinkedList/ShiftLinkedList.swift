import DataStructures

public struct ShiftLinkedList {
    func nodeAtPositionFromLast(_ currentNode: LinkedList, _ position: inout Int,_ size: inout Int) -> (LinkedList,LinkedList) {
        size += 1
        if( currentNode.next == nil ){
            var newPositionToMove = abs(position) % size
            if( position < 0 && newPositionToMove > 0 ){
                newPositionToMove = size - abs(newPositionToMove)
            }
            position = newPositionToMove;
            return ( currentNode, currentNode)
        }
        else {
            var lastNode = nodeAtPositionFromLast(currentNode.next!, &position, &size)
            if( position > 0 ){
                position -= 1
                lastNode = (lastNode.0, currentNode)
            }
            return lastNode
        }
    }
    
    func _shiftLinkedList(_ head: LinkedList, _ k: Int) -> LinkedList? {
        var position = k
        var size = 0
        let nodes : (LinkedList,LinkedList) = self.nodeAtPositionFromLast(head, &position, &size)
        var newHead : LinkedList? = head
        if( nodes.0 !== nodes.1 ){
            newHead = nodes.1.next
            (nodes.1).next = nil
            (nodes.0).next = head
        }
        
        return newHead
    }
    
    static func shiftLinkedList(_ head: LinkedList, _ k: Int) -> LinkedList? {
        guard k != 0 else {
            return head
        }
        
        let program = ShiftLinkedList()
        return program._shiftLinkedList(head, k)
    }
}
