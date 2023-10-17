target "default" {
	tags = ["davidkarlsson416/scout-demo:latest"]
	provenance = [
		"attest=type=sbom",
		"attest=type=provenance,mode=max"
	]
	output = ["type=registry"]
	platforms = ["linux/amd64"]
}
