# unoconv-cluster

> Share data between the webservers and the machine running unoconv.
>
> This folder must be mounted at the same path on all servers.
> 
> Inspired by https://docs.moodle.org/310/en/Universal_Office_Converter_(unoconv)

### Config in .env file

```bash
NFS_FOLDER=</nfs/folder>
NFS_IP=<ip address host with nfs share>
UNOCONV_NGINX_IP=<ip address to nginx load balancer for cluster unoconv>
```

### Example run command
```bash
unoconv --server=<ip> --port=2001 -f pdf </nfs/folder>/file.odt
```

### Example nfs config ( /etc/exports )

```bash
</nfs/folder> 192.168.1.0/24(rw,sync,no_root_squash,no_subtree_check)
```
