local: infra.bs
	bikeshed spec infra.bs infra.html --md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"

remote: infra.bs
	curl https://api.csswg.org/bikeshed/ -f -F file=@infra.bs > infra.html -F md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"
