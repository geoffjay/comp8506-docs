#!/bin/bash

#
# The files to copy are:
#
# figures/
# ├── cp-from-doc.sh
# └── design
#     └── class
#         ├── core
#         │   ├── abstract-buildable.png
#         │   ├── abstract-config.png
#         │   ├── abstract-container.png
#         │   ├── abstract-object.png
#         │   ├── application.png
#         │   ├── buildable.png
#         │   ├── config-node.png
#         │   ├── config.png
#         │   ├── container.png
#         │   ├── controller.png
#         │   ├── dataseries.png
#         │   ├── dbus-interface.png
#         │   ├── enums.png
#         │   ├── factory.png
#         │   ├── message.png
#         │   ├── meta-config.png
#         │   ├── meta-factory.png
#         │   ├── model.png
#         │   ├── node.png
#         │   ├── object.png
#         │   ├── plugin-extension.png
#         │   ├── plugin-information.png
#         │   ├── plugin-manager.png
#         │   ├── plugin.png
#         │   ├── point.png
#         │   ├── ref-container.png
#         │   ├── serializable.png
#         │   ├── syslog.png
#         │   └── view.png
#         ├── daq
#         │   ├── device-manager.png
#         │   ├── device.png
#         │   └── factory.png
#         ├── log
#         │   ├── backend-manager.png
#         │   ├── backend.png
#         │   ├── backend-proxy.png
#         │   └── factory.png
#         └── net
#             ├── enums.png
#             ├── factory.png
#             ├── publish.png
#             ├── reply.png
#             ├── request.png
#             ├── rest-service.png
#             └── subscribe.png
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
  file="../../opendcs/dcs/doc/uml/core/$img.png"
  if [ -a $file ]; then
    echo copying $file
    cp $file figures/design/class/core/
  else
    echo $file does not exist
  fi
done

for img in ${daq[@]}; do
  file="../../opendcs/dcs/doc/uml/daq/$img.png"
  if [ -a $file ]; then
    echo copying $file
    cp $file figures/design/class/daq/
  else
    echo $file does not exist
  fi
done

for img in ${log[@]}; do
  file="../../opendcs/dcs/doc/uml/log/$img.png"
  if [ -a $file ]; then
    echo copying $file
    cp $file figures/design/class/log/
  else
    echo $file does not exist
  fi
done

for img in ${net[@]}; do
  file="../../opendcs/dcs/doc/uml/net/$img.png"
  if [ -a $file ]; then
    echo copying $file
    cp $file figures/design/class/net/
  else
    echo $file does not exist
  fi
done
