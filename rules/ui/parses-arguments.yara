rule argparse : harmless {
  meta:
	description = "Parses command-line arguments"
  strings:
	$ref = "argparse" fullword
	$ref2 = "optarg" fullword
	$ref3 = "getopt" fullword
	$ref4 = "getopts" fullword
  condition:
	any of them
}
