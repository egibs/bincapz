rule lockedFiles : notable {
	meta:
		description = "References 'locked files'"
	strings:
		$ref = /[\w\/\.]{0,24}lockedFiles/
	condition:
		any of them
}

rule lockedFileNames : notable {
	meta:
		description = "References 'locked file names'"
	strings:
		$ref2 = /[\w\/\.]{0,24}lockedFileNames/
	condition:
		any of them
}