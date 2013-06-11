Puppet RPMForge repo module
==============

Adds the RPM Forge repo. Tested on CentOS 6.

Usage
--------------

```puppet
include rpmforge
```

Or to enable extras repo:

```puppet
class {'rpmforge':
	extras => true,
}
```

Dependencies
--------------
* [puppet-module-epel](https://github.com/stahnma/puppet-module-epel)
