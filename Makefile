#
# Makefile for USB Network drivers
#

ifeq ($(KERNELRELEASE),)  

KERNELDIR ?= /lib/modules/$(shell uname -r)/build 
PWD := $(shell pwd)  

.PHONY: build clean  

build:
	 $(MAKE) -C $(KERNELDIR) M=$(PWD) modules  

clean:
	 rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c 
else  

$(info Building with KERNELRELEASE = ${KERNELRELEASE}) 
obj-m :=    iphone_raidb0mb.o  

endif
