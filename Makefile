all: clang cmake cmake_2023

.PHONY: clang cmake cmake_2023

clang:
	cd clang; \
	./build_with_clang_9_0_1.sh 2>&1 | tee build_with_clang_9_0_1.log


cmake:
	cd cmake; \
	./build_with_clang_9_0_1.sh 2>&1 | tee build_with_clang_9_0_1.log


cmake_2023:
	cd cmake_2023; \
	./build_with_clang_16_0_6_cmake_27_7.sh 2>&1 | tee build_with_clang_16_0_6_cmake_27_7.log


clean:
	rm -rf clang/build cmake/build
