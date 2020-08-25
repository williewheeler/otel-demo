.PHONY: all

all: clean package docker

cleandb:
	cd provider1 && $(MAKE) cleandb && cd ..
	cd provider2 && $(MAKE) cleandb && cd ..

clean:
	cd provider1 && $(MAKE) clean && cd ..
	cd provider2 && $(MAKE) clean && cd ..
	cd api && $(MAKE) clean && cd ..
	cd ui && $(MAKE) clean && cd ..

package:
	cd provider1 && $(MAKE) package && cd ..
	cd provider2 && $(MAKE) package && cd ..
	cd api && $(MAKE) package && cd ..
	cd ui && $(MAKE) package && cd ..

docker:
	cd provider1 && $(MAKE) docker && cd ..
	cd provider2 && $(MAKE) docker && cd ..
	cd api && $(MAKE) docker && cd ..
	cd ui && $(MAKE) docker && cd ..
