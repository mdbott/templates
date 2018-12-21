openstack overcloud deploy --templates /usr/share/openstack-tripleo-heat-templates \
  --control-flavor baremetal --compute-flavor baremetal \
  -e /home/stack/templates/node-info.yaml \
  -e /home/stack/templates/basic-network-environment.yaml \
  -e /home/stack/overcloud_images.yaml \
  -e /home/stack/templates/scheduler_hints.yaml \
  --ntp-server 10.76.23.25 --libvirt-type kvm  \
  --log-file overcloud_deployment_0.log
