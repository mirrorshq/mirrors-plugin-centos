prefix=/usr

all:

clean:
	fixme

install:
	install -d -m 0755 "$(DESTDIR)/$(prefix)/lib64/mirrors/plugins"
	cp -r centos "$(DESTDIR)/$(prefix)/lib64/mirrors/plugins"
	find "$(DESTDIR)/$(prefix)/lib64/mirrors/plugins/centos" -type f | xargs chmod 644
	find "$(DESTDIR)/$(prefix)/lib64/mirrors/plugins/centos" -type d | xargs chmod 755
	find "$(DESTDIR)/$(prefix)/lib64/mirrors/plugins/centos" -name "*.py" | xargs chmod 755

uninstall:
	rm -rf "$(DESTDIR)/$(prefix)/lib64/mirrors/plugins/centos"

.PHONY: all clean install uninstall
