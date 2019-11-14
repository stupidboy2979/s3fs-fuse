sudo yum install -y automake fuse fuse-devel gcc-c++ git libcurl-devel libxml2-devel make openssl-devel
git clone https://github.com/s3fs-fuse/s3fs-fuse.git
cd s3fs-fuse
./autogen.sh
./configure
make
make install
s3fs --v
echo "echo ACCESS_KEY_ID:SECRET_ACCESS_KEY > ${HOME}/.passwd-s3fs"
echo "chmod 600 ${HOME}/.passwd-s3fs"
echo "mount script"
echo "mkdir /s3mnt"
echo "s3fs oos-zhangkun /s3mnt -o passwd_file=${HOME}/.passwd-s3fs -o url=http://oos-cn.ctyunapi.cn -o allow_other -o umask=0 -o max_write=131072 -o use_cache=/dev/shm -o big_writes -o enable_noobj_cache -o sigv2 -o del_cache"
