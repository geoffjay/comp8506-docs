NULL =

TEX = /usr/bin/latexmk
PLANTUML = /usr/bin/plantuml

report_TEX = \
	report.tex \
	$(NULL)

report_PDF = \
	$(report_TEX:%.tex=%.pdf) \
	$(NULL)

report_figures_UML = \
	figures/design/class/opendcs.uml \
	figures/design/class/config.uml \
	figures/design/class/factory.uml \
	figures/design/class/node.uml \
	figures/design/class/plugin.uml \
	figures/design/class/service.uml \
	figures/design/class/core/abstract-config.uml \
	figures/design/class/core/application.uml \
	figures/design/class/core/config-node.uml \
	figures/design/class/core/config.uml \
	figures/design/class/core/controller.uml \
	figures/design/class/core/dataseries.uml \
	figures/design/class/core/dbus-interface.uml \
	figures/design/class/core/factory.uml \
	figures/design/class/core/message.uml \
	figures/design/class/core/meta-config.uml \
	figures/design/class/core/meta-factory.uml \
	figures/design/class/core/model.uml \
	figures/design/class/core/node.uml \
	figures/design/class/core/object.uml \
	figures/design/class/core/plugin.uml \
	figures/design/class/core/plugin-information.uml \
	figures/design/class/core/plugin-manager.uml \
	figures/design/class/core/point.uml \
	figures/design/class/core/ref-container.uml \
	figures/design/class/core/ref-linker.uml \
	figures/design/class/core/serializable.uml \
	figures/design/class/core/syslog.uml \
	figures/design/class/core/view.uml \
	figures/design/class/control/controller.uml \
	figures/design/class/control/controller-manager.uml \
	figures/design/class/control/factory.uml \
	figures/design/class/daq/device.uml \
	figures/design/class/daq/device-manager.uml \
	figures/design/class/daq/factory.uml \
	figures/design/class/log/backend.uml \
	figures/design/class/log/backend-manager.uml \
	figures/design/class/log/backend-proxy.uml \
	figures/design/class/log/factory.uml \
	figures/design/class/net/factory.uml \
	figures/design/class/net/service.uml \
	figures/design/class/net/rest-service.uml \
	figures/design/class/net/publish.uml \
	figures/design/class/net/subscribe.uml \
	figures/design/class/net/request.uml \
	figures/design/class/net/reply.uml \
	figures/design/component/plugin.uml \
	figures/design/component/service.uml \
	figures/design/data/config-references.uml \
	figures/design/sequence/control-request.uml \
	figures/design/sequence/load-plugins.uml \
	figures/design/sequence/measure-request.uml \
	figures/design/sequence/project-lifecycle.uml \
	figures/design/sequence/query-request.uml \
	figures/design/use-case/control-hardware.uml \
	figures/design/use-case/deploy-system.uml \
	figures/design/use-case/measure-data.uml \
	figures/design/use-case/query-data-log.uml \
	$(NULL)

report_figures_PNG = \
	$(report_figures_UML:%.uml=%.png)

CLEAN_FILES = \
	$(report_PDF) \
	$(NULL)

.PHONY: clean

all: figures report

figures: $(report_figures_UML) $(report_figures_PNG)

%.png: %.uml
	$(PLANTUML) $<

report: $(report_TEX) $(report_PDF)

%.pdf: %.tex
	$(TEX) -pdf -bibtex -use-make \
		-pdflatex="pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error" $<

clean:
	$(TEX) -CA
	-test -z "$(CLEAN_FILES)" || rm -f %(CLEAN_FILES)
