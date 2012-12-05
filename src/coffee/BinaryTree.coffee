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


(->

  Object.defineProperty Tree.Binary.prototype, "height",
    get: ->
      0

    set: (height) ->
        throw "You cannot set height directly"

)()


class Tree.BinaryUtility

    treeHeight:(binaryTree)->
        0