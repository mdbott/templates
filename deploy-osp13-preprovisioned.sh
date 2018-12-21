openstack overcloud deploy --templates /usr/share/openstack-tripleo-heat-templates \
  --ntp-server pool.ntp.org --libvirt-type kvm  \
  --disable-validations \
  -e /usr/share/openstack-tripleo-heat-templates/environments/deployed-server-environment.yaml \
  -e /usr/share/openstack-tripleo-heat-templates/environments/deployed-server-bootstrap-environment-rhel.yaml \
  -e /usr/share/openstack-tripleo-heat-templates/environments/deployed-server-pacemaker-environment.yaml \
  -r /usr/share/openstack-tripleo-heat-templates/deployed-server/deployed-server-roles-data.yaml \
  -e /home/stack/templates/node-info.yaml \
  -e /home/stack/templates/ctlplane-assignments.yaml \
  --log-file overcloud_deployment_0.log
