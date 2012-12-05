Tree = window.TreeStructure = window.TreeStructure || {}

class Tree.Binary

    leftTree    : null
    rightTree   : null
    value       : ""

    isFull: ->
        @leftTree != null and @rightTree != null

    hasChildren: ->
        @leftTree != null or @rightTree != null

    hasValue: ->
        @value != "" 

    addChild: (binaryTree) ->
        return throw "Tree Is Full" if @isFull()

        if @leftTree == null
            @leftTree = binaryTree
            return

        @rightTree = binaryTree


class Tree.BinaryUtility

    treeHeight:(binaryTree)->
        return if binaryTree is null

        return @heightOfTree binaryTree

    heightOfTree: (binaryTree) ->
        return 0 if binaryTree is null or !binaryTree.hasChildren()

        return Math.max(@heightOfTree(binaryTree.leftTree), @heightOfTree binaryTree.rightTree) + 1


(->
    utility = new Tree.BinaryUtility()

    Object.defineProperty Tree.Binary.prototype, "height",
        get: ->
            utility.treeHeight this

        set: (height) ->
            throw "You cannot set height directly"

)()

