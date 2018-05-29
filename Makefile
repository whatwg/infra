remote: infra.bs
	curl https://api.csswg.org/bikeshed/ -f -F file=@infra.bs > infra.html -F md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"

local: infra.bs
	bikeshed spec infra.bs infra.html --md-Text-Macro="SNAPSHOT-LINK LOCAL COPY"

deploy: infra.bs
	curl --remote-name --fail https://resources.whatwg.org/build/deploy.sh
	bash ./deploy.sh

review: infra.bs
	curl --remote-name --fail https://resources.whatwg.org/build/review.sh
	bash ./review.sh
