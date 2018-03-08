building
buildChildrenHierarchyWith: aNode
	aNode parentNode ifNotNil: [ :aParentNode | aParentNode item addChild: self ]