#!/bin/bash

#
# The files to copy are:
#
# figures/
# ├── cp-from-doc.sh
# └── design
#     └── class
#         ├── core
#         │   ├── abstract-buildable.pdf
#         │   ├── abstract-config.pdf
#         │   ├── abstract-container.pdf
#         │   ├── abstract-object.pdf
#         │   ├── application.pdf
#         │   ├── buildable.pdf
#         │   ├── config-node.pdf
#         │   ├── config.pdf
#         │   ├── container.pdf
#         │   ├── controller.pdf
#         │   ├── dataseries.pdf
#         │   ├── dbus-interface.pdf
#         │   ├── enums.pdf
#         │   ├── factory.pdf
#         │   ├── message.pdf
#         │   ├── meta-config.pdf
#         │   ├── meta-factory.pdf
#         │   ├── model.pdf
#         │   ├── node.pdf
#         │   ├── object.pdf
#         │   ├── plugin-extension.pdf
#         │   ├── plugin-information.pdf
#         │   ├── plugin-manager.pdf
#         │   ├── plugin.pdf
#         │   ├── point.pdf
#         │   ├── ref-container.pdf
#         │   ├── serializable.pdf
#         │   ├── syslog.pdf
#         │   └── view.pdf
#         ├── daq
#         │   ├── device-manager.pdf
#         │   ├── device.pdf
#         │   └── factory.pdf
#         ├── log
#         │   ├── backend-manager.pdf
#         │   ├── backend.pdf
#         │   ├── backend-proxy.pdf
#         │   └── factory.pdf
#         └── net
#             ├── enums.pdf
#             ├── factory.pdf
#             ├── publish.pdf
#             ├── reply.pdf
#             ├── request.pdf
#             ├── rest-service.pdf
#             └── subscribe.pdf
#

core=(
abstract-buildable
abstract-config
abstract-container
abstract-object
application
buildable
config-node
config
container
controller
dataseries
dbus-interface
enums
factory
message
meta-config
meta-factory
model
node
object
plugin-extension
plugin-information
plugin-manager
plugin
point
ref-container
serializable
syslog
view
)

daq=(
device-manager
device
factory
)

log=(
backend-manager
backend
backend-proxy
factory
)

net=(
factory
publish
reply
request
rest-service
subscribe
)

for img in ${core[@]}; do
  file="../../opendcs/dcs/doc/uml/core/$img.pdf"
  if [ -a $file ]; then
    echo copying $file
    cp $file figures/design/class/core/
  else
    echo $file does not exist
  fi
done

for img in ${daq[@]}; do
  file="../../opendcs/dcs/doc/uml/daq/$img.pdf"
  if [ -a $file ]; then
    echo copying $file
    cp $file figures/design/class/daq/
  else
    echo $file does not exist
  fi
done

for img in ${log[@]}; do
  file="../../opendcs/dcs/doc/uml/log/$img.pdf"
  if [ -a $file ]; then
    echo copying $file
    cp $file figures/design/class/log/
  else
    echo $file does not exist
  fi
done

for img in ${net[@]}; do
  file="../../opendcs/dcs/doc/uml/net/$img.pdf"
  if [ -a $file ]; then
    echo copying $file
    cp $file figures/design/class/net/
  else
    echo $file does not exist
  fi
done
