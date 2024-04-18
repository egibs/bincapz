rule fd_write : harmless {
	meta:
		description = "write to file descriptor"
		pledge = "stdio"
		syscall = "pwrite64"
	strings:
		$ref = "pwrited" fullword
		$ref2 = "pwrite" fullword
		$ref3 = "pwrite64" fullword
	condition:
		any of them
}

rule fwrite : harmless {
	meta:
		description = "write binary to file descriptor"
		ref = "https://man7.org/linux/man-pages/man3/fwrite.3p.html"
		pledge = "stdio"
		syscall = "pwrite64"
	strings:
		$ref = "fwrite" fullword
	condition:
		any of them
}
