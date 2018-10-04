as yet unclassified
getSfxFile
	| targetFileRef |
	targetFileRef := self folder / '7zS.sfx'.
	targetFileRef ensureDelete.
	'C:\Users\BlondVi\AppData\Roaming\pharo\7zS.sfx' asFileReference copyTo: targetFileRef