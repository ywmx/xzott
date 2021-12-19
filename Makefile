run: 
	cargo run


debug:
	cargo run --quiet 2> cargo_build.log
	@echo "DEBUG log saved to cargo_build.log file"



clean:
	cargo clean
	rm cargo_build.log


build:  
	cargo bootimage
	qemu-system-x86_64 -drive format=raw,file=target/cisc/debug/bootimage-xzott.bin
