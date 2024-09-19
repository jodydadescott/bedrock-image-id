IMAGES := "images.json"

build:
	../cloud/golang/bluerockctl/dist/darwin/arm64/bluerockctl -f json -o $(IMAGES) images init
	../cloud/golang/bluerockctl/dist/darwin/arm64/bluerockctl -f json -i $(IMAGES) -o $(IMAGES) images add --image ami-100 --region us-east-1 --vendor aws --version 1.0.1 --arch amd64 --tags "mode=enforcing,kind=eks"
	../cloud/golang/bluerockctl/dist/darwin/arm64/bluerockctl -f json -i $(IMAGES) -o $(IMAGES) images add --image ami-101 --region us-east-1 --vendor aws --version 1.0.1 --arch arm64 --tags "mode=permissive,kind=eks"
	../cloud/golang/bluerockctl/dist/darwin/arm64/bluerockctl -f json -i $(IMAGES) -o $(IMAGES) images add --image ami-100 --region us-east-2 --vendor aws --version 1.0.1 --arch amd64 --tags "mode=enforcing,kind=eks"
	../cloud/golang/bluerockctl/dist/darwin/arm64/bluerockctl -f json -i $(IMAGES) -o $(IMAGES) images add --image ami-101 --region us-east-2 --vendor aws --version 1.0.1 --arch arm64 --tags "mode=permissive,kind=eks"
