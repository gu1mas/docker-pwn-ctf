FROM ubuntu
ENV LC_CTYPE C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
RUN dpkg --add-architecture i386 && \
apt-get update && \
apt-get upgrade -y && \
apt-get install -y build-essential \
jq \
git \
strace \
ltrace \ 
curl \ 
wget \
ruby rubygems \
make \
gcc \
dnsutils \
gcc-multilib \
net-tools \
vim \
gdb \
gdb-multiarch \
python3 python3-pip python3-dev \
libssl-dev && \
pip3 install pwntools ROPgadget && \
mkdir tools && cd tools && \
# git clone https://github.com/radare/radare2 && cd radare2 && sys/install.sh && cd .. && \
# git clone https://github.com/niklasb/libc-database && cd libc-database && ./get ubuntu && cd .. && \
wget -O ~/.gdbinit-gef.py -q http://gef.blah.cat/py && \
echo source ~/.gdbinit-gef.py >> ~/.gdbinit && \
gem install one_gadget
