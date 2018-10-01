# Development Tools

Makes my life easier while I make cools stuff

## Tunnel

Planning to switch this to autossh

1. Create include directory

```$ mkdir -p ~/.ssh/config.d```

2. Link or copy tunnel definitions to new directory
3. Add the the following to ` ~/.ssh/config` file replacing relevant
parts:
```
Include config.d/*

Host devbox tun.*
  HostName        instance-hostname
  User            instance-username
  UseKeychain     yes
  AddKeysToAgent  yes
  IdentityFile    path/to/key
```
_Note the Host directive supports tags eg. devbox_