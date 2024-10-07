PWD=$(shell pwd)


luajit:
	$(MAKE) -C luajit/luajit install PREFIX=${PWD}/luajit MACOSX_DEPLOYMENT_TARGET=15.01

clean:
	$(MAKE) -C luajit/luajit clean PREFIX=${PWD}/luajit MACOSX_DEPLOYMENT_TARGET=15.01

.PHONY: luajit clean
