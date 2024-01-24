// Increasing Order Search Tree
// https://leetcode.com/problems/increasing-order-search-tree/description/
func increasingBST(_ root: TreeNode?) -> TreeNode? {
    guard let list = root?.toList(), !list.isEmpty else {
        return nil
    }

    return TreeNode(array: list)
}

extension TreeNode {
    func toList() -> [Int] {
        var a: [Int] = []
        if let left = left {
            a += left.toList()
        }
        a += [val]

        if let right = right {
            a += right.toList()
        }
        return a
    }

    func insert(value: Int) {
        if let right = right {
            right.insert(value: value)
        } else {
            let _right = TreeNode(value)
            right = _right
        }
    }

    convenience init(array: [Int]) {
        precondition(array.count > 0)
        self.init(array.first!)
        for v in array.dropFirst() {
            insert(value: v)
        }
    }
}
