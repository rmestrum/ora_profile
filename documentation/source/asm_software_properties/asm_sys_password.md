The `sys` password to use for ASM.

When the hiera key `easy_type::generate_password_mode` is set to either `development` or `silent` a password is default valie is autmaticaly generated. When `easy_type::generate_password_mode` is set to `production`, or not specfied, no default value is available and the puppet compile will fail telling you it needs a password. 