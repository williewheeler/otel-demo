.PHONY: all

all: clean package docker

clean:
	cd ui && $(MAKE) clean && cd ..

package:
	cd ui && $(MAKE) package && cd ..

docker:
	cd ui && $(MAKE) docker && cd ..
