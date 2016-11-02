local: infra.bs
	bikeshed

remote: infra.bs
	curl https://api.csswg.org/bikeshed/ -f -F file=@infra.bs > infra.html
