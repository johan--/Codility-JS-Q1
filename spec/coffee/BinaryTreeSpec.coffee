BinaryTree = window.TreeStructure.Binary

describe "BinaryTree", ->
  testTree = undefined

  beforeEach ->
    testTree = new BinaryTree()


  describe "When Initialized", ->

    it "it should not have any children", ->
      expect(testTree.hasChildren()).toBeFalsy()
      

    it "it should not have a value", ->
      expect(testTree.hasValue()).toBeFalsy()

    it "it should not be full", ->
      expect(testTree.isFull()).toBeFalsy()

    it "it should have a height of 0", ->
      expect(testTree.height).toBe(0)

  
  describe "When Tree Has One Child", ->
    beforeEach ->
      testTree.addChild new BinaryTree()

    it "it should not be full", ->
      expect(testTree.isFull()).toBeFalsy()

    it "it should have a height of 1", ->
      expect(testTree.height).toBe(1)

  
  describe "When Tree Has Two Children", ->
    beforeEach ->
      testTree.addChild new BinaryTree()
      testTree.addChild new BinaryTree()

    it "it should be full", ->
      expect(testTree.isFull()).toBeTruthy()

    it "it should have a height of 1", ->
      expect(testTree.height).toBe(1)

    it "it should not allow any additional children to be added", ->
      expect(->
        testTree.addChild new BinaryTree()
      ).toThrow "Tree Is Full"


