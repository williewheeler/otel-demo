.PHONY: all

all: clean package docker

clean:
	cd api && $(MAKE) clean && cd ..
	cd ui && $(MAKE) clean && cd ..

package:
	cd api && $(MAKE) package && cd ..
	cd ui && $(MAKE) package && cd ..

docker:
	cd api && $(MAKE) docker && cd ..
	cd ui && $(MAKE) docker && cd ..
