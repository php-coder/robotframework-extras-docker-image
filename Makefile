IMAGE_VERSION := 0.1

docker-build-and-tag:
	docker build . \
		--tag phpcoder/robotframework-extras:latest \
		--tag phpcoder/robotframework-extras:$(IMAGE_VERSION)

docker-push-all:
	docker push phpcoder/robotframework-extras:latest && \
	docker push phpcoder/robotframework-extras:$(IMAGE_VERSION)

git-tag:
	git tag -a "$(IMAGE_VERSION)" -m "$(IMAGE_VERSION)"

git-push-all:
	git push && git push --tags

.PHONY: docker-build-and-tag docker-push-all
.PHONY: git-tag git-push-all
