# This docker file is for creating AllegroGraph.
FROM yexianyi/oracle-jdk:centos7

ARG DOWNLOAD_URL=https://franz.com/ftp/pri/acl/ag/ag6.6.0/linuxamd64.64/agraph-6.6.0-1.x86_64.rpm?l=agfree

MAINTAINER Xianyi Ye <https://cn.linkedin.com/in/yexianyi>

# Install essential components for installing BERT
RUN wget ${DOWNLOAD_URL} \
  && rpm -i agraph-6.6.0-1.x86_64.rpm \
 
