export base_dir := ${CURDIR}
export obj_dir := ${base_dir}/build
export release_dir := ${base_dir}/release
export lib_math_src := ${base_dir}/src

lib_math := ${lib_math_src}

libraries := $(lib_math)

.PHONY: all $(libraries)
all: $(libraries)

$(libraries): | ${obj_dir} ${release_dir}
	$(MAKE) --directory=$@

clean:
	rm build/*.o
	rm release/*.a
	rm release/*.so
