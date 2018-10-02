## ansible部署脚本

### 前言

本工程使用需要安装ansible [安装方法](https://github.com/doitanyway/notes-everything/tree/master/ansible)

### 命令

* 部署redis哨兵到服务器

```
ansible-playbook 1.redis.yml
```

* 清理部署
```
ansible-playbook 0.clear.yml
```
