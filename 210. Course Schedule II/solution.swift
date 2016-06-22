class Solution {
    func findOrder(numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        var graph = [Node]()
        for i in 0..<numCourses {
            graph.append(Node(index: i))
        }
        for pair in prerequisites {
            graph[pair[1]].outNodes.append(graph[pair[0]])
            graph[pair[0]].inCount++
        }
        var zeroIn = graph.filter(){$0.inCount == 0}
        var ans = [Int]()
        while zeroIn.count > 0 {
            let first = zeroIn.removeLast()
            ans.append(first.index)
            for out in first.outNodes {
                out.inCount--
                if out.inCount == 0 {
                    zeroIn.append(out)
                }
            }
        }
        return graph.filter(){$0.inCount != 0}.count == 0 ? ans : [Int]()
    }
}
class Node {
    var outNodes = [Node]()
    var inCount = 0
    let index: Int
    init(index: Int) {
        self.index = index
    }
}
