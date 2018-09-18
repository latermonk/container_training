#  docker基础

配置后重启

```
systemctl daemon-reload   
   
systemctl restart docker  

```

##  安装docker


###  手动安装

####  yum直接联网安装
```


参考：https://docs.docker.com/install/linux/docker-ce/centos/



yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce
     
     
systemctl start docker
     

```

####  离线下载安装包安装
```
https://download.docker.com/linux/centos/7/x86_64/stable/Packages/
```


###  自动化安装

####  docker安装官方脚本
```
curl -fsSL get.docker.com -o get-docker.sh

sh get-docker.sh
```


####  第三方脚本
```
curl https://releases.rancher.com/install-docker/17.03.sh | sh
```

###  安装指定版本

####  下载指定版本安装包并安装

[https://download.docker.com/linux/centos/7/x86_64/stable/Packages/](https://download.docker.com/linux/centos/7/x86_64/stable/Packages/)

####  yum安装执行版本的docker


	

##  配置docker

###  配置国内加速


```
vim /usr/lib/systemd/system/docker.service

add:

--registry-mirrors=https://registry.docker-cn.com


systemctl daemon-reload    &&  systemctl restart docker

systemctl daemon-reload    &&  systemctl restart docker


```

###  配置开机启动


```
systemctl start docker &&  systemctl  enable docker 
```





##   局域网内部的安装方法



#### 方法一：

```
cd /etc/yum.repo

wget  https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce

```







#### 方法二：



```
Open  https://download.docker.com/linux/centos/7/x86_64/stable/Packages/

wget   https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-18.03.1.ce-1.el7.centos.x86_64.rpm

yum localinstall  docker-ce-18.03.1.ce-1.el7.centos.x86_64.rpm

```

