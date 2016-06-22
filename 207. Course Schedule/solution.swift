class Solution {
    func canFinish(numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var graph = [Node]()
        for _ in 0..<numCourses {
            graph.append(Node())
        }
        for pair in prerequisites {
            graph[pair[1]].outNodes.append(graph[pair[0]])
            graph[pair[0]].inCount++
        }
        var zeroIn = graph.filter(){$0.inCount == 0}
        while zeroIn.count > 0 {
            let first = zeroIn.removeLast()
            for out in first.outNodes {
                out.inCount--
                if out.inCount == 0 {
                    zeroIn.append(out)
                }
            }
        }
        return graph.filter(){$0.inCount != 0}.count == 0
    }
}
class Node {
    var outNodes = [Node]()
    var inCount = 0
}