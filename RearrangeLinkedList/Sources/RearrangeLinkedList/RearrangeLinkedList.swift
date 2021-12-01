import DataStructures

public struct RearrangeLinkedList {
    static func swapNodes(_ a: LinkedList, _ b: LinkedList, _ parentNode: LinkedList?) -> LinkedList {
        let temp = b.next
        b.next = a
        a.next = temp
        parentNode?.next = b
        return b
    }
    
    static func rearrangeLinkedList(_ head: LinkedList, _ parent: LinkedList?, _ k: Int) -> LinkedList? {
        var currentNode = head
        let currentNodeValue = currentNode.value
        if let nextNode = currentNode.next {
            let nextNodeValue = nextNode.value
            if (nextNodeValue < k && currentNodeValue >= k) ||
                (nextNodeValue <= k && currentNodeValue > k){
                currentNode = swapNodes(currentNode, nextNode, parent)
                if parent == nil {
                    currentNode = rearrangeLinkedList(currentNode, k)!
                }
            }
            else {
                let newNext = rearrangeLinkedList(nextNode, currentNode, k)
                if newNext != nextNode {
                    currentNode = rearrangeLinkedList( head, parent, k)!
                }
            }
        }
        return currentNode
    }
    
    static func rearrangeLinkedList(_ head: LinkedList, _ k: Int) -> LinkedList? {
        let newHead = rearrangeLinkedList(head, nil, k)
        return newHead
    }
}
