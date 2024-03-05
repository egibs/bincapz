rule zsh_persist : high {
  meta:
	description = "Writes to bash configuration files"
  strings:
	$ref = ".zprofile"
	$ref2 = ".zshrc"
	$ref3 = "/etc/zprofile"
	$ref4 = "/etc/zshrc"
    $not_bash = "POSIXLY_CORRECT"
  condition:
    filesize < 2097152 and any of ($ref*) and none of ($not*)
}

rule zsh_logout_persist : suspicious {
  meta:
	description = "Writes to bash configuration files to persist"
  strings:
	$ref = ".zlogout"
	$ref2 = "/etc/zlogout"
    $not_bash = "POSIXLY_CORRECT"
  condition:
    filesize < 2097152 and any of ($ref*) and none of ($not*)
}

