FROM opensuse:latest
MAINTAINER Stephen Garran <stephen@garran.com>

RUN zypper --gpg-auto-import-keys --non-interactive ref && \
    zypper --gpg-auto-import-keys --non-interactive up

RUN zypper --non-interactive in --auto-agree-with-licenses openssh sshpass

RUN zypper --non-interactive in --auto-agree-with-licenses python python-PyYAML

RUN zypper --non-interactive in --auto-agree-with-licenses \
    python-Jinja2 python-httplib2 python-six

RUN zypper --non-interactive in --auto-agree-with-licenses git


CMD ["/sbin/init"]
