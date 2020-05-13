SHELL=/bin/bash -o pipefail
.PHONY: local remote deploy review

remote: infra.bs
	@ (HTTP_STATUS=$$(curl https://api.csswg.org/bikeshed/ \
	                       --output infra.html \
	                       --write-out "%{http_code}" \
	                       --header "Accept: text/plain, text/html" \
	                       -F die-on=warning \
	                       -F md-Text-Macro="COMMIT-SHA LOCAL COPY" \
	                       -F file=@infra.bs) && \
	[[ "$$HTTP_STATUS" -eq "200" ]]) || ( \
		echo ""; cat infra.html; echo ""; \
		rm -f infra.html; \
		exit 22 \
	);

local: infra.bs
	bikeshed spec infra.bs infra.html --md-Text-Macro="COMMIT-SHA LOCAL COPY"

deploy: infra.bs
	curl --remote-name --fail https://resources.whatwg.org/build/deploy.sh
	bash ./deploy.sh

review: infra.bs
	curl --remote-name --fail https://resources.whatwg.org/build/review.sh
	bash ./review.sh
