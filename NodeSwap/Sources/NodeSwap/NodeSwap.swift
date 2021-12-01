import DataStructures

public struct NodeSwap {
    func nodeSwap(_ head: LinkedList, _ parentNode: LinkedList?) -> LinkedList {
        var currentNode = head
        if let nextNode = currentNode.next {
            let temp = nextNode.next
            nextNode.next = currentNode
            currentNode.next = temp
            if temp != nil {
                _ = nodeSwap(temp!, currentNode)
            }
            currentNode = nextNode
            parentNode?.next = currentNode
        }
        return parentNode ?? currentNode
    }
    
    func nodeSwap(_ head: LinkedList) -> LinkedList {
        return nodeSwap(head, nil)
    }
}
