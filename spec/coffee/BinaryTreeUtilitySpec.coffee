BinaryTree = window.TreeStructure.Binary
BinaryTreeUtility = window.TreeStructure.BinaryUtility

describe "BinaryTreeUtility", ->
  testTree = undefined
  utility = undefined

  beforeEach ->
    testTree = new BinaryTree()
    utility = new BinaryTreeUtility()


  describe "When Tree Is Empty", ->

    it "it should have a height of 0", ->
      expect(utility.treeHeight(testTree)).toBe(0)

  
  describe "When Tree Has One Child", ->

    beforeEach ->
      testTree.addChild new BinaryTree()

    it "it should have a height of 1", ->
      expect(utility.treeHeight(testTree)).toBe(1)

  
  describe "When Tree Has Four Levels", ->
    testTree2 = undefined
    testTree3 = undefined

    beforeEach ->
      testTree2 = new BinaryTree()
      testTree2.addChild new BinaryTree()
      testTree3 = new BinaryTree()
      testTree3.addChild testTree2
      testTree.addChild testTree3

    it "it should have a height of 3", ->
      expect(utility.treeHeight(testTree)).toBe(3)


