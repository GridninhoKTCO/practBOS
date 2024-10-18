all:
	$(MAKE) -C libpractbos
	$(MAKE) -C libpractbos-text
	$(MAKE) -C libpractbos-json
	$(MAKE) -C libpractbos-client
	$(MAKE) -C libpractbos-daemon

clean:
	$(MAKE) -C libpractbos clean
	$(MAKE) -C libpractbos-text clean
	$(MAKE) -C libpractbos-json clean
	$(MAKE) -C libpractbos-client clean
	$(MAKE) -C libpractbos-daemon clean

install:
	$(MAKE) -C libpractbos install
	$(MAKE) -C libpractbos-text install
	$(MAKE) -C libpractbos-json install
	$(MAKE) -C libpractbos-client install
	$(MAKE) -C libpractbos-daemon install

deb:
	$(MAKE) -C libpractbos deb
	$(MAKE) -C libpractbos-text deb
	$(MAKE) -C libpractbos-json deb
	$(MAKE) -C libpractbos-client deb
	$(MAKE) -C libpractbos-daemon deb

repo:
	mkdir -p repository/debs
	cp libpractbos/*.deb repository/debs/
	cp libpractbos-text/*.deb repository/debs/
	cp libpractbos-json/*.deb repository/debs/
	cp libpractbos-client/*.deb repository/debs/
	cp libpractbos-daemon/*.deb repository/debs/
	cd repository && dpkg-scanpackages debs /dev/null | gzip -9c > debs/Packages.gz
	echo "deb [trusted=yes] file://$(PWD)/repository/debs ./" > repository/repo.list

.PHONY: all clean install deb repo
