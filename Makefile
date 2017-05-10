NULL =

SUBDIRS = proposal report

.PHONY: subdirs $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

clean: $(CLEANDIRS)

$(CLEANDIRS):
	$(MAKE) -C $(@:clean-%=%) clean

.PHONY: subdirs $(SUBDIRS)
.PHONY: subdirs $(CLEANDIRS)
.PHONY: all clean
