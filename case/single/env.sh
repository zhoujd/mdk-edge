## env.sh

## inventory.yml
export SINGLE_HOST=${SINGLE_HOST:-127.0.0.1}
export DEK_HOME=${DEK_HOME:-`pwd`}
INVENTORY=(
    '.all.vars.single_node_deployment=true'
    '.controller_group.hosts.controller.ansible_host=strenv(SINGLE_HOST)'
    '.edgenode_group.hosts.node01.ansible_host=strenv(SINGLE_HOST)'
)

## inventory/default/group_vars/all/10-default.yml
export HTTP_PROXY=${HTTP_PROXY:-""}
export HTTP_PROXY=${HTTPS_PROXY:-""}
export FTP_PROXY=${FTP_PROXY:-""}
export NO_PROXY=${NO_PROXY:-".intel.com,intel.com,localhost,127.0.0.0/8,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16"}
VARS=(
    '.proxy_env.http_proxy=strenv(HTTP_PROXY)'
    '.proxy_env.https_proxy=strenv(HTTP_PROXY)'
    '.proxy_env.ftp_proxy=strenv(FTP_PROXY)'
    '.proxy_env.no_proxy=strenv(NO_PROXY)'
    '.sriov_network_operator_enable=false'
    '.sriov_network_operator_configure_enable=false'
    '.sriov_network_detection_application_enable=false'
    '.e810_driver_enable=false'
    '.platform_attestation_node=false'
    '.sgx_enabled=false'
)
