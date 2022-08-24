# This is a cool makefile.
SOURCE_DIR = source

all:
	@for dir in $(SOURCE_DIR)/*; do  [ -d "$$dir" ] && make -C "$$dir" $@; done

list:
	@for dir in $(SOURCE_DIR)/*; do  [ -d "$$dir" ] && make -C "$$dir" $@; done

test:
	@for dir in $(SOURCE_DIR)/*; do  [ -d "$$dir" ] && make -C "$$dir" $@; done

check:
	@for dir in $(SOURCE_DIR)/*; do  [ -d "$$dir" ] && make -C "$$dir" $@; done

pack:
	@for dir in $(SOURCE_DIR)/*; do  [ -d "$$dir" ] && make -C "$$dir" $@; done

clean:
	@for dir in $(SOURCE_DIR)/*; do  [ -d "$$dir" ] && make -C "$$dir" $@; done

setup:
	@echo "Checking for GCC/Clang ..."
	@which gcc > /dev/null || apt install -y build-essential
	@echo "Checking for zip ..."
	@which zip > /dev/null || apt install -y zip
	@echo "Checking for PNPM ..."
	@which pnpm > /dev/null || curl -fsSL https://get.pnpm.io/install.sh | sh -
	@echo "Checking for Node.js ..."
	@which node > /dev/null || pnpm env use -g lts
	@echo "Setting up tools ..."
	@pnpm install > /dev/null
	@echo "Done."
