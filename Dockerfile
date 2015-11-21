FROM centos:7
MAINTAINER Filirom1 <Filirom1@gmail.com>

RUN yum install -y initscripts fontconfig https://grafanarel.s3.amazonaws.com/builds/grafana-2.5.0-1.x86_64.rpm 

VOLUME ["/var/lib/grafana", "/var/log/grafana", "/etc/grafana"]

EXPOSE 3000

ENTRYPOINT ["/usr/sbin/grafana-server", "--homepath=/usr/share/grafana", "--config=/etc/grafana/grafana.ini", "cfg:default.paths.data=/var/lib/grafana", "cfg:default.paths.logs=/var/log/grafana"]
