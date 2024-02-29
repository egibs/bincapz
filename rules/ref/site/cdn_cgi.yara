rule cdn_cgi : notable {
  meta:
	description = "Mentions Cloudflare cdn-cgi endpoint"
  strings:
    $cdn_cgi = "cdn-cgi" fullword
    $not_ct = "https://report-uri.cloudflare.com/cdn-cgi/"
  condition:
	$cdn_cgi and not $not_ct
}

rule cdn_cgi_xor : suspicious {
  meta:
	description = "Mentions Cloudflare cdn-cgi endpoint, XOR"
  strings:
    $cdn_cgi = "cdn-cgi" xor(1-31)
    $cdn_cgi2 = "cdn-cgi" xor(33-255)
  condition:
    any of them
}
