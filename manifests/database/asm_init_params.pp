#++--++
#--++--
# lint:ignore:variable_scope
class ora_profile::database::asm_init_params(
  Hash    $parameters         = {},
) inherits ora_profile::database {

  if $parameters.keys.size > 0 {
    echo {"Ensure ASM init parameter(s) ${parameters.keys.join(',')}":
      withpath => false,
    }
  }

  $parameters.each |String $param, Hash $param_props = {}| {
    if $param =~ '@' {
      $init_param = $param
    } else {
      $init_param = "${param}@${asm_instance_name}"
    }
    ora_init_param {
      default:
        ensure => present,
      ;
      $init_param:
        * => $param_props,
    }
  }

}
# lint:endignore
