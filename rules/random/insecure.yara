rule bsd_rand {
	meta:
		description = "generate random numbers insecurely"
	strings:
		$_rand = "_rand" fullword
		$srand = "srand" fullword
	condition:
		any of them
}
