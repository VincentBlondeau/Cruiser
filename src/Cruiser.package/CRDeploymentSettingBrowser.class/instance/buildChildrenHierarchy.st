building
buildChildrenHierarchy
	self treeHolder nodeList do: [ :aNode | aNode buildChildrenHierarchy ]