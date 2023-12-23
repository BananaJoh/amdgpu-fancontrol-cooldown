.PHONY: all install uninstall

all:

install:
	cp amdgpu-fancontrol /usr/bin/amdgpu-fancontrol
	cp amdgpu-fancontrol.service /etc/systemd/system/amdgpu-fancontrol.service
	@echo "To install your config, run 'cp etc-amdgpu-fancontrol[.MY_CARD].cfg /etc/amdgpu-fancontrol.cfg'"

uninstall:
	rm -f /usr/bin/amdgpu-fancontrol /etc/amdgpu-fancontrol.cfg /etc/systemd/system/amdgpu-fancontrol.service
