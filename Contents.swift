import UIKit

// Pre-Order Traversal
// Goal is to return 8,11,7,30,4,9,6
// Visits the current node first then recursively visits the left and right child
/*
        8
      /   \
     11    4
    /  \  /  \
   7   30 9    6
 */

class BinaryTreeNode<T> {
  var value: T
  var leftChild: BinaryTreeNode?
  var rightChild: BinaryTreeNode?
  init(_ value: T) {
    self.value = value
  }
}



var binaryTree: BinaryTreeNode<Int> = {
let rootNode = BinaryTreeNode(8)
let elevenNode = BinaryTreeNode(11)
let fourNode = BinaryTreeNode(4)
let sevenNode = BinaryTreeNode(7)
let thirtyNode = BinaryTreeNode(30)
let sixNode = BinaryTreeNode(6)
let nineNode = BinaryTreeNode(9)

rootNode.leftChild = elevenNode
rootNode.rightChild = fourNode
elevenNode.leftChild = sevenNode
elevenNode.rightChild = thirtyNode
fourNode.leftChild = nineNode
fourNode.rightChild = sixNode
    
return rootNode
}()
extension BinaryTreeNode {
    public func traversePreOrder(visit:(T) -> Void){
    visit(value)
    leftChild?.traversePreOrder(visit: visit)
    rightChild?.traversePreOrder(visit: visit)
    }
}
binaryTree.traversePreOrder { print($0) }

