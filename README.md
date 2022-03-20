# unoconv-cluster

> Share data between the webservers and the machine running unoconv.
>
> This folder must be mounted at the same path on all servers.
> 
> Inspired by https://docs.moodle.org/310/en/Universal_Office_Converter_(unoconv)

### Config in .env file

```bash
NFS_FOLDER=</nfs/folder>
NFS_IP=<ip>
```

### Example run command
```bash
numberUnoconv=16
unoconv --server=<ip> --port=20$(printf "%02d" $((1+$RANDOM%$numberUnoconv))) -f pdf </nfs/folder>/file.odt
```

### Example nfs config ( /etc/exports )

```bash
</nfs/folder> 192.168.1.0/24(rw,sync,no_root_squash,no_subtree_check)
```
