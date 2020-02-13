FROM centos:8.1.1911

ARG polyverse_key

RUN yum -y update && \ 
    curl https://repo.polyverse.io/cli | sh -s install ${polyverse_key} && \
    yum -y update && \
    yum -y reinstall \* && \
    yum -y clean all && \
    rm /etc/yum.repos.d/polyverse.repo && \
    rm -rf /var/cache/yum && \
    find /var/log -type f -exec rm -f {} \;

