rule file_crypter : suspicious {
	meta:
		description = "Encrypts files"
	strings:
		$ref = "Files encrypted"
		$ref2 = "Encrypting file"
		$ref3 = "encrypts files"
		$ref4 = "files_encrypted"
	condition:
		any of them
}