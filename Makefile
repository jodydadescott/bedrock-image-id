IMAGES := "images.json"

build:
	../cloud/golang/bluerockctl/dist/darwin/arm64/bluerockctl -f json -o $(IMAGES) images init
	../cloud/golang/bluerockctl/dist/darwin/arm64/bluerockctl -f json -i $(IMAGES) -o $(IMAGES) images add --image ami-0fef73e13610a4164 --region us-east-1 --vendor aws --version 24.35.0 --arch amd64 --tags "mode=permissive,kind=eks"
	../cloud/golang/bluerockctl/dist/darwin/arm64/bluerockctl -f json -i $(IMAGES) -o $(IMAGES) images add --image ami-0cc1787a03f64dd64 --region us-east-1 --vendor aws --version 24.35.0 --arch amd64 --tags "mode=enforcing,kind=eks"
	../cloud/golang/bluerockctl/dist/darwin/arm64/bluerockctl -f json -i $(IMAGES) -o $(IMAGES) images add --image ami-039b186faeb15b96c --region us-east-2 --vendor aws --version 24.35.0 --arch amd64 --tags "mode=permissive,kind=eks"
	../cloud/golang/bluerockctl/dist/darwin/arm64/bluerockctl -f json -i $(IMAGES) -o $(IMAGES) images add --image ami-0f911121d8905cd11 --region us-east-2 --vendor aws --version 24.35.0 --arch amd64 --tags "mode=enforcing,kind=eks"

