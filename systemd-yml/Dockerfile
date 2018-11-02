FROM centos:7.5.1804

# This bit is exactly as per the documentation and can be stuck
# existing Dockerfiles without issue
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
  systemd-tmpfiles-setup.service ] || rm -f $i; done); \
  rm -f /lib/systemd/system/multi-user.target.wants/*;\
  rm -f /etc/systemd/system/*.wants/*;\
  rm -f /lib/systemd/system/local-fs.target.wants/*; \
  rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
  rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
  rm -f /lib/systemd/system/basic.target.wants/*;\
  rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]

# In case it isn't obvious, you do NOT need httpd, it is only
# an example implementation so can be safely ignored.
RUN yum -y install httpd; yum clean all;

# You HAVE to enable your service PRIOR to calling "init"
# since the init call is what ultimately fires it up
RUN systemctl enable httpd.service

# Again, no need to expose port 80, it is used as part of the
# example implementation
EXPOSE 80

# This here does the magic and starts your service
CMD ["/usr/sbin/init"]