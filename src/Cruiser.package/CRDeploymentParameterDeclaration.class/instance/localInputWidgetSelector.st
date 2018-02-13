user interface
localInputWidgetSelector
	| imSel |
	^ (self respondsTo: (imSel := ('inputWidgetFor' , self type , self relativeOrNot) asSymbol))
		ifTrue: [ imSel ]