.PHONY: release clean

SHA := $(shell git rev-parse --short HEAD)

release:
	mkdir -p build
	git archive --prefix=LongerPreciousLumpTimeLimit/ -o build/LongerPreciousLumpTimeLimit-$(SHA).zip master

clean:
	rm -r build
