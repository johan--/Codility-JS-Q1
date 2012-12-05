// Generated by CoffeeScript 1.4.0
(function() {
  var Tree;

  Tree = window.TreeStructure = window.TreeStructure || {};

  Tree.Binary = (function() {

    function Binary() {}

    Binary.prototype.leftTree = null;

    Binary.prototype.rightTree = null;

    Binary.prototype.value = "";

    Binary.prototype.isFull = function() {
      return this.leftTree !== null && this.rightTree !== null;
    };

    Binary.prototype.hasChildren = function() {
      return this.leftTree !== null || this.rightTree !== null;
    };

    Binary.prototype.hasValue = function() {
      return this.value !== "";
    };

    Binary.prototype.addChild = function(binaryTree) {
      if (this.isFull()) {
        throw "Tree Is Full";
      }
      if (this.leftTree === null) {
        this.leftTree = binaryTree;
        return;
      }
      return this.rightTree = binaryTree;
    };

    return Binary;

  })();

  Tree.BinaryUtility = (function() {

    function BinaryUtility() {}

    BinaryUtility.prototype.treeHeight = function(binaryTree) {
      if (binaryTree === null) {
        return;
      }
      return this.heightOfTree(binaryTree);
    };

    BinaryUtility.prototype.heightOfTree = function(binaryTree) {
      if (binaryTree === null || !binaryTree.hasChildren()) {
        return 0;
      }
      return Math.max(this.heightOfTree(binaryTree.leftTree), this.heightOfTree(binaryTree.rightTree)) + 1;
    };

    return BinaryUtility;

  })();

  (function() {
    var utility;
    utility = new Tree.BinaryUtility();
    return Object.defineProperty(Tree.Binary.prototype, "height", {
      get: function() {
        return utility.treeHeight(this);
      },
      set: function(height) {
        throw "You cannot set height directly";
      }
    });
  })();

}).call(this);
