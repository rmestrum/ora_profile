---
title: client::software
keywords: documentation
layout: documentation
sidebar: ora_profile_sidebar
toc: false
---
## Overview

Installs the Oracle client software on your system.

Using this classe you can install the Oracle client software on your system.




## Attributes



Attribute Name                                                           | Short Description                                                                 |
------------------------------------------------------------------------ | --------------------------------------------------------------------------------- |
[bash_profile](#client::software_bash_profile)                           | Create a bash profile for the specified user or not.                              |
[db_port](#client::software_db_port)                                     | The IP port to use for database communication.                                    |
[download_dir](#client::software_download_dir)                           | The directory where the Puppet software puts all downloaded files.                |
[file](#client::software_file)                                           | The source file to use.                                                           |
[group](#client::software_group)                                         | The os group to use for these Oracle puppet definitions.                          |
[group_install](#client::software_group_install)                         | The os group to use for installation.                                             |
[logoutput](#client::software_logoutput)                                 | log the outputs of Puppet exec or not.                                            |
[ora_inventory_dir](#client::software_ora_inventory_dir)                 | The directory that contains the oracle inventory.                                 |
[oracle_base](#client::software_oracle_base)                             | The base firectory to use for the Oracle installation.                            |
[oracle_home](#client::software_oracle_home)                             | A directory to be used as Oracle home directory for this software.                |
[puppet_download_mnt_point](#client::software_puppet_download_mnt_point) | The base path of all remote files for the defined type or class.                  |
[remote_file](#client::software_remote_file)                             | This parameter is not being used anymore and will be removed in a future release. |
[temp_dir](#client::software_temp_dir)                                   | Directory to use for temporary files.                                             |
[user](#client::software_user)                                           | The user used for the specified installation.                                     |
[user_base_dir](#client::software_user_base_dir)                         | The directory to use as base directory for the users.                             |
[version](#client::software_version)                                     | The version that is installed in the used Oracle home.                            |




### bash_profile<a name='client::software_bash_profile'>

Create a bash profile for the specified user or not.

Valid values are `true` and `false`.

When you specify a `true` for the parameter, Puppet will create a standard bash profile for the specified user. The bash profile will be placed in a directory named `user_base_dir/user`.

```puppet
ora_install::client { 'Oracle client':
  ...
  bash_profile  => true,
  user          => 'oracle',
  user_base_dir => '/home',
  ...
}
```

This snippet will create a bash profile called `/home/oracle/.bash_profile`.

Type: `Boolean`


[Back to overview of client::software](#attributes)

### db_port<a name='client::software_db_port'>

The IP port to use for database communication.

The default value is: `1521`

Type: `Integer`


[Back to overview of client::software](#attributes)

### download_dir<a name='client::software_download_dir'>

The directory where the Puppet software puts all downloaded files.

Before Puppet can actually use remote files, they must be downloaded first. Puppet uses this directory to put all files in.

The default value is: `/install`

Type: `Stdlib::Absolutepath`


[Back to overview of client::software](#attributes)

### file<a name='client::software_file'>

The source file to use.

Type: `String[1]`


[Back to overview of client::software](#attributes)

### group<a name='client::software_group'>

The os group to use for these Oracle puppet definitions.

The default value is: `dba`

Type: `String[1]`


[Back to overview of client::software](#attributes)

### group_install<a name='client::software_group_install'>

The os group to use for installation.

The default value is: `oinstall`

Type: `String[1]`


[Back to overview of client::software](#attributes)

### logoutput<a name='client::software_logoutput'>

log the outputs of Puppet exec or not.

When you specify `true` Puppet will log all output of `exec` types.

Valid values are:

- `true`
- `false`
- `on_failure`

Type: `Variant[Boolean,Enum['on_failure']]`


[Back to overview of client::software](#attributes)

### ora_inventory_dir<a name='client::software_ora_inventory_dir'>

The directory that contains the oracle inventory.

The default value is: `/oracle_base/oraInventory`

Type: `Optional[Stdlib::Absolutepath]`


[Back to overview of client::software](#attributes)

### oracle_base<a name='client::software_oracle_base'>

The base firectory to use for the Oracle installation.

The default is : `/u01/app/oracle`

To customize this consistently use the hiera key `ora_profile::database::install_group`.


Type: `Stdlib::Absolutepath`


[Back to overview of client::software](#attributes)

### oracle_home<a name='client::software_oracle_home'>

A directory to be used as Oracle home directory for this software.

Type: `Stdlib::Absolutepath`


[Back to overview of client::software](#attributes)

### puppet_download_mnt_point<a name='client::software_puppet_download_mnt_point'>

The base path of all remote files for the defined type or class.

The default value is: `puppet:///modules/ora_install`

Type: `Optional[String[1]]`


[Back to overview of client::software](#attributes)

### remote_file<a name='client::software_remote_file'>

**DEPRECATED**
This parameter is not being used anymore and will be removed in a future release.

`true`.


[Back to overview of client::software](#attributes)

### temp_dir<a name='client::software_temp_dir'>

Directory to use for temporary files.

Type: `Stdlib::Absolutepath`


[Back to overview of client::software](#attributes)

### user<a name='client::software_user'>

The user used for the specified installation.
The install class will not create the user for you. You must do that yourself.

The default value is: `oracle`

Type: `String[1]`


[Back to overview of client::software](#attributes)

### user_base_dir<a name='client::software_user_base_dir'>

The directory to use as base directory for the users.

Type: `Stdlib::Absolutepath`


[Back to overview of client::software](#attributes)

### version<a name='client::software_version'>

The version that is installed in the used Oracle home.

Puppet uses this value to decide on version specific actions.

Type: `Ora_install::Version`


[Back to overview of client::software](#attributes)
