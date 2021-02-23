import Foundation

class Program  {
    class Node : CustomDebugStringConvertible {
        let name: String
        var children: [Node]
        
        init(name: String) {
            self.name = name
            children = []
        }
        
        func addChild(name: String) -> Node {
            let childNode = Node(name: name)
            children.append(childNode)            
            return childNode
        }

        public var debugDescription: String {
            var description = self.name;
            for node in self.children {
                var childDesc = node.debugDescription
                description = "\(description) \(childDesc)"
            }
            return description
        }
        
        func depthFirstSearch(array: inout [String]) -> [String] {
            array.append(self.name)
            for node in self.children {
                node.depthFirstSearch(array:&array)
            }
            return array
        }
    }
    
    func run() {
        let nodeA = Node(name:"A")
        let nodeB = nodeA.addChild(name:"B")
        let nodeC = nodeA.addChild(name:"C")
        let nodeD = nodeA.addChild(name:"D")
        let nodeE = nodeB.addChild(name:"E")
        let nodeF = nodeB.addChild(name:"F")
        let nodeI = nodeF.addChild(name:"I")
        let nodeJ = nodeF.addChild(name:"J")
        let nodeG = nodeD.addChild(name:"G")
        let nodeH = nodeD.addChild(name:"H")
        let nodeK = nodeG.addChild(name:"K")
        var array = [String]()
        array = nodeA.depthFirstSearch(array:&array)
        print(array)
    }
}

Program().run()
