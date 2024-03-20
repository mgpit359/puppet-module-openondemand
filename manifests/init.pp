# @summary Manage Open OnDemand
#
# @param repo_release
#   The release of OnDemand repo
# @param repo_baseurl_prefix
#   The baseurl prefix for OnDemand repo
# @param repo_gpgkey
#   The URL for OnDemand repo GPG key
# @param repo_proxy
#   The URL for proxy for OnDemand repo
# @param repo_priority
#   The priority of the OnDemand repo
# @param repo_module_hotfixes
#   The module_hotfixes of the OnDemand repo
# @param repo_exclude
#   Exclusion for OnDemand repo
# @param manage_dependency_repos
#   Boolean that determines if managing repos for package dependencies
# @param manage_epel
#   Boolean that determines if managing EPEL repo
# @param repo_nightly
#   Add the OnDemand nightly repo
# @param selinux
#   Boolean that determines if adding SELinux support
# @param ondemand_package_ensure
#   ondemand package ensure
# @param ondemand_dex_package_ensure
#   ondemand-dex package ensure
# @param mod_auth_openidc_ensure
#   mod_auth_openidc package ensure
# @param install_apps
#   Hash of apps to install, passed to ondemand::install::app
# @param declare_apache
#   Boolean that determines if apache is declared or included
# @param apache_user
#   Name of the Apache user
# @param apache_scls
#   SCLs to load when starting Apache service
# @param generator_insecure
#   Run ood-portal-generator with --insecure flag
#   This is needed if you wish to use default ood@localhost user or
#   other local users
# @param listen_addr_port
#   ood_portal.yml listen_addr_port
# @param servername
#   ood_portal.yml servername
# @param server_aliases
#   ood_porta.yml server_aliases
# @param ssl
#   ood_portal.yml ssl
# @param disable_logs
#   ood_portal.yml disable_logs
# @param logroot
#   ood_portal.yml logroot
# @param use_rewrites
#   ood_portal.yml use_rewrites
# @param use_maintenance
#   ood_portal.yml use_maintenance
# @param maintenance_ip_allowlist
#   ood_portal.yml maintenance_ip_allowlist
# @param maintenance_source
#   Source for maintenance index.html
# @param maintenance_content
#   Content for maintenance index.html
# @param security_csp_frame_ancestors
#   ood_portal.yml security_csp_frame_ancestors
# @param security_strict_transport
#   ood_portal.yml security_strict_transport
# @param lua_root
#   ood_portal.yml lua_root
# @param lua_log_level
#   ood_portal.yml lua_log_level
# @param user_map_match
#   ood_portal.yml user_map_match
# @param user_map_cmd
#   ood_portal.yml user_map_cmd
# @param user_env
#   ood_portal.yml user_env
# @param map_fail_uri
#   ood_portal.yml map_fail_uri
# @param auth_type
#   ood_portal.yml auth_type
# @param auth_configs
#   ood_portal.yml auth_configs
# @param custom_vhost_directives
#   ood_portal.yml custom_vhost_directives
# @param custom_location_directives
#   ood_portal.yml custom_location_directives
# @param root_uri
#   ood_portal.yml root_uri
# @param analytics
#   ood_portal.yml analytics
# @param public_uri
#   ood_portal.yml public_uri
# @param public_root
#   ood_portal.yml public_root
# @param logout_uri
#   ood_portal.yml logout_uri
# @param logout_redirect
#   ood_portal.yml logout_redirect
# @param host_regex
#   ood_portal.yml host_regex
# @param node_uri
#   ood_portal.yml node_uri
# @param rnode_uri
#   ood_portal.yml rnode_uri
# @param nginx_uri
#   ood_portal.yml nginx_uri
# @param pun_uri
#   ood_portal.yml pun_uri
# @param pun_socket_root
#   ood_portal.yml pun_socket_root
# @param pun_max_retries
#   ood_portal.yml pun_max_retries
# @param pun_pre_hook_root_cmd
#   ood_portal.yml pun_pre_hook_root_cmd
# @param pun_pre_hook_exports
#   ood_porta.yml pun_pre_hook_exports
# @param oidc_uri
#   ood_portal.yml oidc_uri
# @param oidc_discover_uri
#   ood_portal.yml oidc_discover_uri
# @param oidc_discover_root
#   ood_portal.yml oidc_discover_root
# @param register_uri
#   ood_portal.yml register_uri
# @param register_root
#   ood_portal.yml register_root
# @param oidc_provider_metadata_url
#   OIDC metadata URL
# @param oidc_client_id
#   OIDC client ID
# @param oidc_client_secret
#   OIDC client secret
# @param oidc_remote_user_claim
#   OIDC REMOTE_USER claim
# @param oidc_scope
#   OIDC scopes
# @param oidc_session_inactivity_timeout
#   OIDC session inactivity timeout, see OIDCSessionInactivityTimeout
# @param oidc_session_max_duration
#   OIDC session max duration, see OIDCSessionMaxDuration
# @param oidc_state_max_number_of_cookies
#   OIDC setting that determines how to clean up cookies
# @param oidc_settings
#   Hash of OIDC settings passsed directly to Apache config
# @param dex_uri
#   Dex URI if put behind Apache reverse proxy
# @param dex_config
#   Dex configuration Hash
# @param web_directory
#   Path to main web directory for OnDemand
# @param nginx_log_group
#   Group to set for /var/log/ondemand-nginx
# @param nginx_stage_clean_cron_schedule
#   Configure how often you want to run nginx_clean
#   Defaults to '0 */2 * * *' (every other hour)
# @param nginx_stage_ondemand_portal
#   nginx_stage.yml ondemand_portal
# @param nginx_stage_ondemand_title
#   nginx_stage.yml ondemand_title
# @param nginx_stage_pun_custom_env
#   nginx_stage.yml pun_custom_env
# @param nginx_stage_app_root
#   nginx_stage.yml app_root
# @param nginx_stage_scl_env
#   nginx_stage.yml scl_env
# @param nginx_stage_app_request_regex
#   nginx_stage.yml app_request_regex
# @param nginx_stage_min_uid
#   nginx_stage.yml min_uid
# @param nginx_stage_passenger_pool_idle_time
#   nginx_stage.yml passenger_pool_idle_time
# @param nginx_stage_passenger_options
#   nginx_stage.yml passenger_options
# @param nginx_stage_nginx_file_upload_max
#   nginx_stage.yml nginx_file_upload_max
# @param nginx_stage_configs
#   nginx_stage.yml extra configuration options
# @param config_dir_purge
#   Boolean that sets if ondemand.d should be purged of unmanaged files
# @param config_source
#   The source for /etc/ood/config/ondemand.d/ondemand.yml
#   Overrides `config_content` as well as pinned apps and dashboard layout parameters
# @param config_content
#   The content for /etc/ood/config/ondemand.d/ondemand.yml
#   Overrides pinned apps and dashboard layout parameters
# @param confs
#   Hash to define openondemand::conf resources
# @param pinned_apps
#   Defines the OnDemand configuration for pinned_apps
# @param pinned_apps_menu_length
#   Defines the OnDemand configuration for pinned_apps_menu_length
# @param pinned_apps_group_by
#   Defines the OnDemand configuration for pinned_apps_group_by
# @param dashboard_layout
#   Defines the OnDemand configuration for dashboard_layout
# @param hook_env
#   Boolean that sets of hook.env configuration should be managed
# @param hook_env_path
#   Path to hook.env
# @param hook_env_config
#   Configuration hash to pass into hook.env
# @param kubectl_path
#   Path to kubectl
# @param clusters
#   Hash of resources to apss to openondemand::cluster
# @param clusters_hiera_merge
#   Boolean that determines if clusters should be merged via lookup function
# @param usr_apps
#   Resources passed to openondemand::app::usr
# @param usr_app_defaults
#   Defaults for `usr_apps` resources
# @param dev_apps
#   Resources passed to openondemand::app::dev
# @param dev_app_users
#   Users to define as having dev apps, passed to openondemand::app::dev
# @param dev_app_defaults
#   Defaults for `dev_apps` and `dev_app_users`
# @param apps_config_repo
#   Git repo URL for apps config
# @param apps_config_revision
#   Revision for apps config Git repo
# @param apps_config_repo_path
#   Path in apps config Git repo for app configs
# @param locales_config_repo_path
#   Path in apps config Git repo for locales configs
# @param announcements_config_repo_path
#   Path in apps config Git repo for announcements
# @param apps_config_source
#   Source for apps config, not used if `apps_config_repo` is defined
# @param locales_config_source
#   Source for locales config, not used if `apps_config_repo` is defined
# @param announcements_config_source
#   Source for aouncements config, not used if `apps_config_repo` is defined
# @param public_files_repo_paths
#   Path to public files in apps config Git repo
# @param public_files_source_paths
#   Path to the source for public files
# @param manage_logrotate
#   Boolean that allows disabling management of logrotate
# @param manage_sudo
#   Boolean that allows disabling management of sudo 
#

class openondemand (
  # repos
  String $repo_release = '3.1',
  Variant[Stdlib::HTTPSUrl, Stdlib::HTTPUrl]
  $repo_baseurl_prefix = 'https://yum.osc.edu/ondemand',
  Variant[Stdlib::HTTPSUrl, Stdlib::HTTPUrl, Stdlib::Absolutepath]
  $repo_gpgkey = 'https://yum.osc.edu/ondemand/RPM-GPG-KEY-ondemand-SHA512',
  Optional[String[1]] $repo_proxy = undef,
  Integer[1,99] $repo_priority = 99,
  Optional[Boolean] $repo_module_hotfixes = undef,
  String $repo_exclude = 'absent',
  Boolean $manage_dependency_repos = true,
  Boolean $manage_epel = true,
  Boolean $repo_nightly = false,

  # sudo 
  Boolean $manage_sudo = true,

  # packages
  Boolean $selinux = false,
  String $ondemand_package_ensure                 = 'present',
  String $ondemand_dex_package_ensure             = 'present',
  String $mod_auth_openidc_ensure                 = 'present',
  Hash $install_apps                              = {},

  # Apache
  Boolean $declare_apache = true,
  String[1] $apache_user = 'apache',
  String $apache_scls = 'httpd24',

  # ood_portal.yml
  Boolean $generator_insecure = false,
  Variant[Array, String, Undef] $listen_addr_port = undef,
  Optional[String] $servername = undef,
  Optional[Array] $server_aliases = undef,
  Optional[Array] $ssl = undef,
  Boolean $disable_logs = false,
  String  $logroot = 'logs',
  Boolean $use_rewrites = true,
  Boolean $use_maintenance = true,
  Array $maintenance_ip_allowlist = [],
  Optional[String] $maintenance_source = undef,
  Optional[String] $maintenance_content = undef,
  Optional[Variant[String, Boolean]] $security_csp_frame_ancestors = undef,
  Boolean $security_strict_transport = true,
  String $lua_root = '/opt/ood/mod_ood_proxy/lib',
  Optional[String] $lua_log_level = undef,
  String $user_map_match = '.*',
  Optional[String] $user_map_cmd  = undef,
  Optional[String] $user_env = undef,
  Optional[String] $map_fail_uri = undef,
  Variant[Enum['CAS', 'openid-connect', 'shibboleth', 'dex'], String[1]] $auth_type = 'dex',
  Optional[Array] $auth_configs = undef,
  Array $custom_vhost_directives = [],
  Array $custom_location_directives = [],
  String $root_uri = '/pun/sys/dashboard',
  Optional[Struct[{ url => String, id => String }]] $analytics = undef,
  String $public_uri = '/public',
  String $public_root = '/var/www/ood/public',
  String $logout_uri = '/logout',
  String $logout_redirect = '/pun/sys/dashboard/logout',
  String $host_regex = '[^/]+',
  Optional[String] $node_uri = undef,
  Optional[String] $rnode_uri = undef,
  String $nginx_uri = '/nginx',
  String $pun_uri = '/pun',
  String $pun_socket_root = '/var/run/ondemand-nginx',
  Integer $pun_max_retries = 5,
  Optional[Stdlib::Absolutepath] $pun_pre_hook_root_cmd = undef,
  Optional[String] $pun_pre_hook_exports = undef,
  Optional[String] $oidc_uri = undef,
  Optional[String] $oidc_discover_uri = undef,
  Optional[String] $oidc_discover_root = undef,
  Optional[String] $register_uri = undef,
  Optional[String] $register_root = undef,

  # OIDC configs
  Optional[String] $oidc_provider_metadata_url = undef,
  Optional[String] $oidc_client_id = undef,
  Optional[String] $oidc_client_secret = undef,
  String $oidc_remote_user_claim = 'preferred_username',
  String $oidc_scope = 'openid profile email',
  Integer $oidc_session_inactivity_timeout = 28800,
  Integer $oidc_session_max_duration = 28800,
  String $oidc_state_max_number_of_cookies = '10 true',
  Hash $oidc_settings = {},

  # Dex configs
  Variant[String[1],Boolean] $dex_uri = '/dex',
  Openondemand::Dex_config $dex_config = {},

  # Misc configs
  Stdlib::Absolutepath $web_directory = '/var/www/ood',
  String $nginx_log_group = 'ondemand-nginx',

  # nginx_stage configs
  String $nginx_stage_clean_cron_schedule = '0 */2 * * *',
  String $nginx_stage_ondemand_portal = 'ondemand',
  Optional[String] $nginx_stage_ondemand_title  = undef,
  Hash $nginx_stage_pun_custom_env = {},
  Openondemand::Nginx_stage_namespace_config $nginx_stage_app_root  = {},
  String $nginx_stage_scl_env = 'ondemand',
  Optional[Openondemand::Nginx_stage_namespace_config] $nginx_stage_app_request_regex = undef,
  Integer $nginx_stage_min_uid = 1000,
  Integer $nginx_stage_passenger_pool_idle_time = 300,
  Hash[Pattern[/^passenger_.+/], Variant[String, Integer]] $nginx_stage_passenger_options = {},
  Optional[Integer] $nginx_stage_nginx_file_upload_max = undef,
  Hash $nginx_stage_configs = {},

  # configs
  Boolean $config_dir_purge = true,
  Optional[String] $config_source = undef,
  Optional[String] $config_content = undef,
  Hash $confs = {},
  Optional[Array[Variant[String[1], Hash]]] $pinned_apps = undef,
  Optional[Integer] $pinned_apps_menu_length = undef,
  Optional[String[1]] $pinned_apps_group_by = undef,
  Optional[Openondemand::Dashboard_layout] $dashboard_layout = undef,

  # hooks
  Boolean $hook_env = true,
  Stdlib::Absolutepath $hook_env_path = '/etc/ood/config/hook.env',
  Hash $hook_env_config = {},
  Stdlib::Absolutepath $kubectl_path = '/bin/kubectl',

  # clusters
  Hash $clusters = {},
  Boolean $clusters_hiera_merge = true,

  # usr/dev apps
  Variant[Array, Hash] $usr_apps  = {},
  Hash $usr_app_defaults = {},
  Hash $dev_apps = {},
  Array $dev_app_users = [],
  Hash $dev_app_defaults = {},

  # apps/locales/public configs
  Optional[String] $apps_config_repo = undef,
  Optional[String] $apps_config_revision = undef,
  String $apps_config_repo_path = '', # lint:ignore:params_empty_string_assignment
  Optional[String] $locales_config_repo_path = undef,
  Optional[String] $announcements_config_repo_path = undef,

  Optional[String] $apps_config_source = undef,
  Optional[String] $locales_config_source = undef,
  Optional[String] $announcements_config_source = undef,
  Array $public_files_repo_paths = [],
  Array $public_files_source_paths = [],

  # Disable functionality
  Boolean $manage_logrotate = true,
) {
  $osfamily = $facts.dig('os', 'family')
  $osname = $facts.dig('os', 'name')
  $osmajor = $facts.dig('os', 'release', 'major')

  $supported = ['RedHat-7','RedHat-8','RedHat-9','RedHat-2023','Debian-20.04','Debian-22.04','Debian-12']
  $os = "${osfamily}-${osmajor}"
  if ! ($os in $supported) {
    fail("Unsupported OS: module ${module_name}. osfamily=${osfamily} osmajor=${osmajor} detected")
  }

  # Handle unsupported distro and OnDemand combos
  if $repo_release == '3.1' {
    if "${osfamily}-${osmajor}" == 'RedHat-7' {
      fail('EL7 is not supported with OnDemand 3.1')
    }
  }
  if $repo_release == '3.0' {
    if "${osname}-${osmajor}" == 'Amazon-2023' {
      fail('Amazon 2023 is not supported with OnDemand 3.0')
    }
    if "${osname}-${osmajor}" == 'Debian-12' {
      fail('Debian 12 is not supported with OnDemand 3.0')
    }
  }

  if versioncmp($osmajor, '7') <= 0 {
    $scl_apache = true
  } else {
    $scl_apache = false
  }

  # EL9 only has these two versions at this time
  if $repo_release == '3.0' and "${osfamily}-${osmajor}" == 'RedHat-9' {
    $nodejs = 'absent'
    $ruby = 'absent'
  } elsif $repo_release == '3.0' {
    $nodejs = '14'
    $ruby = '3.0'
  } else {
    $nodejs = '18'
    $ruby = '3.1'
  }

  if $selinux {
    $selinux_package_ensure = $ondemand_package_ensure
  } else {
    $selinux_package_ensure = 'absent'
  }

  if $facts['os']['name'] == 'Amazon' {
    $dist = 'amzn'
  } elsif $osfamily == 'RedHat' {
    $dist = 'el'
  } else {
    $dist = undef
  }

  if $osfamily == 'RedHat' {
    $repo_baseurl = "${repo_baseurl_prefix}/${repo_release}/web/${dist}${osmajor}/\$basearch"
    $repo_nightly_baseurl = "${repo_baseurl_prefix}/nightly/web/${dist}${osmajor}/\$basearch"
  } elsif $osfamily == 'Debian' {
    $repo_baseurl = "${repo_baseurl_prefix}/${repo_release}/web/apt"
    $repo_nightly_baseurl = "${repo_baseurl_prefix}/nightly/web/apt"
  }

  if $ssl {
    $port = '443'
    $listen_ports = ['443', '80']
    $protocol = 'https'
  } else {
    $port = '80'
    $listen_ports = ['80']
    $protocol = 'http'
  }

  if $repo_nightly {
    $nightly_ensure = 'present'
  } else {
    $nightly_ensure = 'absent'
  }

  $nginx_stage_cmd = '/opt/ood/nginx_stage/sbin/nginx_stage'
  $pun_stage_cmd = "sudo ${nginx_stage_cmd}"

  case $auth_type {
    'dex': {
      $auth = undef
      $_dex_config = $dex_config
    }
    default: {
      $auth = ["AuthType ${auth_type}"] + $auth_configs
      $_dex_config = undef
    }
  }

  if $apps_config_repo {
    $_public_files_require = Vcsrepo['/opt/ood-apps-config']
  }

  if $apps_config_repo and $apps_config_repo_path {
    $_apps_config_source = "/opt/ood-apps-config/${apps_config_repo_path}"
  } else {
    $_apps_config_source = $apps_config_source
  }

  if $apps_config_repo and $locales_config_repo_path {
    $_locales_config_source = "/opt/ood-apps-config/${locales_config_repo_path}"
  } else {
    $_locales_config_source = $locales_config_source
  }

  if $apps_config_repo and $announcements_config_repo_path {
    $_announcements_config_source = "/opt/ood-apps-config/${announcements_config_repo_path}"
  } else {
    $_announcements_config_source = $announcements_config_source
  }

  if $_announcements_config_source {
    $announcements_purge = true
  } else {
    $announcements_purge = undef
  }

  if $clusters_hiera_merge {
    $_clusters = lookup('openondemand::clusters', Hash, 'deep', {})
  } else {
    $_clusters = $clusters
  }

  $ood_portal_config = {
    'listen_addr_port'                 => $listen_ports,
    'servername'                       => $servername,
    'server_aliases'                   => $server_aliases,
    'port'                             => $port,
    'ssl'                              => $ssl,
    'disable_logs'                     => $disable_logs,
    'logroot'                          => $logroot,
    'use_rewrites'                     => $use_rewrites,
    'use_maintenance'                  => $use_maintenance,
    'maintenance_ip_allowlist'         => $maintenance_ip_allowlist,
    'security_csp_frame_ancestors'     => $security_csp_frame_ancestors,
    'security_strict_transport'        => $security_strict_transport,
    'lua_root'                         => $lua_root,
    'lua_log_level'                    => $lua_log_level,
    'user_map_match'                   => $user_map_match,
    'user_map_cmd'                     => $user_map_cmd,
    'user_env'                         => $user_env,
    'map_fail_uri'                     => $map_fail_uri,
    'pun_stage_cmd'                    => $pun_stage_cmd,
    'auth'                             => $auth,
    'custom_vhost_directives'          => $custom_vhost_directives,
    'custom_location_directives'       => $custom_location_directives,
    'root_uri'                         => $root_uri,
    'analytics'                        => $analytics,
    'public_uri'                       => $public_uri,
    'public_root'                      => $public_root,
    'logout_uri'                       => $logout_uri,
    'logout_redirect'                  => $logout_redirect,
    'host_regex'                       => $host_regex,
    'node_uri'                         => $node_uri,
    'rnode_uri'                        => $rnode_uri,
    'nginx_uri'                        => $nginx_uri,
    'pun_uri'                          => $pun_uri,
    'pun_socket_root'                  => $pun_socket_root,
    'pun_max_retries'                  => $pun_max_retries,
    'pun_pre_hook_root_cmd'            => $pun_pre_hook_root_cmd,
    'pun_pre_hook_exports'             => $pun_pre_hook_exports,
    'oidc_uri'                         => $oidc_uri,
    'oidc_discover_uri'                => $oidc_discover_uri,
    'oidc_discover_root'               => $oidc_discover_root,
    'register_uri'                     => $register_uri,
    'register_root'                    => $register_root,
    'oidc_provider_metadata_url'       => $oidc_provider_metadata_url,
    'oidc_client_id'                   => $oidc_client_id,
    'oidc_client_secret'               => $oidc_client_secret,
    'oidc_remote_user_claim'           => $oidc_remote_user_claim,
    'oidc_scope'                       => $oidc_scope,
    'oidc_session_inactivity_timeout'  => $oidc_session_inactivity_timeout,
    'oidc_session_max_duration'        => $oidc_session_max_duration,
    'oidc_state_max_number_of_cookies' => $oidc_state_max_number_of_cookies,
    'oidc_settings'                    => $oidc_settings,
    'dex_uri'                          => $dex_uri,
    'dex'                              => $_dex_config,
  }.filter |$key, $value| { $value =~ NotUndef }
  $ood_portal_yaml = to_yaml($ood_portal_config)
  $base_apps = {
    'dashboard' => { 'package' => 'ondemand', 'manage_package' => false },
    'shell' => { 'package' => 'ondemand', 'manage_package' => false },
    'files' => { 'package' => 'ondemand', 'manage_package' => false },
    'file-editor' => { 'package' => 'ondemand', 'manage_package' => false },
    'activejobs' => { 'package' => 'ondemand', 'manage_package' => false },
    'myjobs' => { 'package' => 'ondemand', 'manage_package' => false },
    'bc_desktop' => { 'package' => 'ondemand', 'manage_package' => false },
  }

  $ondemand_config = {
    'pinned_apps' => $pinned_apps,
    'pinned_apps_menu_length' => $pinned_apps_menu_length,
    'pinned_apps_group_by' => $pinned_apps_group_by,
    'dashboard_layout' => $dashboard_layout,
  }.filter |$key, $value| { $value =~ NotUndef }

  if $osfamily == 'RedHat' {
    contain openondemand::repo::rpm
    Class['openondemand::repo::rpm'] -> Class['openondemand::install']
  }
  if $osfamily == 'Debian' {
    contain openondemand::repo::apt
    Class['openondemand::repo::apt'] -> Class['openondemand::install']
  }
  contain openondemand::install
  contain openondemand::apache
  contain openondemand::config
  contain openondemand::service

  Class['openondemand::install']
  ->Class['openondemand::apache']
  ->Class['openondemand::config']
  ->Class['openondemand::service']

  Class['openondemand::install'] -> Class['apache']
  Class['openondemand::install'] -> Apache::Mod <| |>

  $_clusters.each |$name, $cluster| {
    openondemand::cluster { $name: * => $cluster }
  }

  if $usr_apps =~ Array {
    $usr_apps.each |$usr_app| {
      openondemand::app::usr { $usr_app: * => $usr_app_defaults }
    }
  } else {
    $usr_apps.each |$name, $usr_app| {
      $parameters = $usr_app_defaults + $usr_app
      openondemand::app::usr { $name: * => $parameters }
    }
  }

  $dev_apps.each |$name, $dev_app| {
    $parameters = $dev_app_defaults + $dev_app
    openondemand::app::dev { $name: * => $parameters }
  }

  $dev_app_users.each |$user| {
    openondemand::app::dev { $user:
      * => $dev_app_defaults,
    }
  }

  $apps = deep_merge($base_apps, $install_apps)
  $apps.each |$name, $app| {
    openondemand::install::app { $name: * => $app }
  }

  $confs.each |$name, $params| {
    openondemand::conf { $name: * => $params }
  }
}
