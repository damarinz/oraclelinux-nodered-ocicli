FROM oraclelinux

MAINTAINER damarinz


ENV FLOWS=flows.json
ENV TERM=xterm


RUN yum -y groupinstall base "Development Tools" --setopt=group_package_types=mandatory,default,optional && \
    yum install -y oracle-nodejs-release-el7 oracle-release-el7 && \
    yum install -y bzip2-devel gdbm-devel libffi-devel libuuid-devel ncurses-devel openssl-devel readline-devel \
    sqlite-devel tk-devel wget xz-devel zlib-devel vim 	nodejs node-oracledb-node10 && \
    git clone https://github.com/pyenv/pyenv.git /root/.pyenv && \
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> /root/.bash_profile && \
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> /root/.bash_profile && \
    echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> /root/.bash_profile && \
    source /root/.bash_profile && \
    pyenv install 3.7.2 && \
    pyenv global 3.7.2 && \
    pip install --upgrade pip && \
    pip install oci-cli && \
    npm install -g --unsafe-perm node-red


EXPOSE 1880
CMD [ "/usr/bin/node-red" ]