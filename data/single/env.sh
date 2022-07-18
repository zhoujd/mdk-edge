## single env.sh

## inventory.yml
INVENTORY=(
    '.all.vars.single_node_deployment=true'
    '.controller_group.hosts.controller.ansible_host=strenv(SINGLE_HOST)'
    '.edgenode_group.hosts.node01.ansible_host=strenv(SINGLE_HOST)'
)

## 10-default.yml
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
