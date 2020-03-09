all: clang cmake

.PHONY: clang cmake

clang:
	cd clang; \
	./build_with_clang_9_0_1.sh 2>&1 | tee build_with_clang_9_0_1.log


cmake:
	cd cmake; \
	./build_with_clang_9_0_1.sh 2>&1 | tee build_with_clang_9_0_1.log

clean:
	rm -rf clang/build cmake/build
