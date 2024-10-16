description: 'Payment Card Industry - Data Security Standard (PCI-DSS) is a set of

    security standards designed to ensure the secure handling of payment card

    data, with the goal of preventing data breaches and protecting sensitive

    financial information.


    This profile ensures Red Hat Enterprise Linux 9 is configured in alignment

    with PCI-DSS v4.0 requirements.'
extends: null
hidden: ''
metadata:
    version: '4.0'
    SMEs:
    - marcusburghardt
    - mab879
    - vojtapolasek
reference: https://docs-prv.pcisecuritystandards.org/PCI%20DSS/Standard/PCI-DSS-v4_0.pdf
selections:
- coredump_disable_storage
- accounts_passwords_pam_faillock_unlock_time
- audit_rules_session_events
- firewalld_loopback_traffic_restricted
- set_password_hashing_algorithm_libuserconf
- audit_rules_login_events_lastlog
- directory_access_var_log_audit
- file_owner_grub2_cfg
- no_shelllogin_for_systemaccounts
- file_owner_cron_allow
- dconf_gnome_screensaver_idle_delay
- ensure_root_password_configured
- file_owner_cron_daily
- file_owner_backup_etc_shadow
- service_avahi-daemon_disabled
- package_audispd-plugins_installed
- sshd_set_login_grace_time
- file_owner_cron_hourly
- audit_rules_dac_modification_lsetxattr
- file_groupowner_cron_d
- package_logrotate_installed
- audit_rules_networkconfig_modification
- rsyslog_files_permissions
- dconf_gnome_disable_automount_open
- sshd_set_loglevel_verbose
- package_nftables_installed
- audit_rules_time_stime
- auditd_data_retention_space_left_action
- bios_enable_execution_restrictions
- audit_sudo_log_events
- audit_rules_sysadmin_actions
- accounts_tmout
- file_owner_backup_etc_group
- grub2_audit_backlog_limit_argument
- audit_rules_file_deletion_events_unlinkat
- file_groupowner_backup_etc_shadow
- file_permissions_cron_daily
- file_groupowner_backup_etc_passwd
- set_password_hashing_algorithm_systemauth
- sshd_limit_user_access
- sshd_set_max_sessions
- file_permissions_crontab
- file_permissions_at_allow
- file_owner_etc_passwd
- package_sudo_installed
- file_owner_backup_etc_passwd
- audit_rules_login_events_faillock
- audit_rules_file_deletion_events_rename
- file_groupowner_etc_passwd
- file_permissions_etc_shadow
- sudo_require_reauthentication
- package_telnet_removed
- file_permissions_unauthorized_world_writable
- audit_rules_dac_modification_fchown
- chronyd_run_as_chrony_user
- file_at_deny_not_exist
- file_groupowner_crontab
- sysctl_fs_suid_dumpable
- selinux_confinement_of_daemons
- security_patches_up_to_date
- file_permissions_cron_weekly
- file_cron_deny_not_exist
- file_permissions_etc_group
- accounts_password_set_max_life_existing
- package_audit_installed
- file_permissions_var_log_audit
- accounts_no_uid_except_zero
- disable_host_auth
- file_permissions_ungroupowned
- dconf_gnome_screensaver_lock_enabled
- sshd_disable_empty_passwords
- aide_build_database
- file_owner_user_cfg
- package_tftp-server_removed
- dconf_gnome_screensaver_mode_blank
- audit_rules_file_deletion_events_renameat
- accounts_password_all_shadowed
- audit_rules_mac_modification
- account_unique_id
- accounts_set_post_pw_existing
- audit_rules_login_events_tallylog
- file_ownership_var_log_audit
- file_permissions_cron_d
- disable_users_coredumps
- file_groupowner_cron_hourly
- dconf_db_up_to_date
- sysctl_net_ipv4_ip_forward
- file_owner_cron_monthly
- set_password_hashing_algorithm_logindefs
- audit_rules_usergroup_modification_passwd
- no_password_auth_for_systemaccounts
- sshd_set_maxstartups
- dconf_gnome_screensaver_idle_activation_enabled
- file_groupowner_cron_allow
- sudo_add_use_pty
- accounts_maximum_age_login_defs
- configure_firewalld_ports
- service_firewalld_enabled
- audit_rules_dac_modification_lchown
- ensure_redhat_gpgkey_installed
- file_owner_etc_group
- accounts_password_pam_pwhistory_remember_password_auth
- display_login_attempts
- group_unique_id
- kernel_module_sctp_disabled
- selinux_policytype
- file_groupowner_user_cfg
- dconf_gnome_disable_automount
- timer_logrotate_enabled
- file_groupowner_cron_weekly
- package_net-snmp_removed
- coredump_disable_backtraces
- enable_authselect
- auditd_data_retention_admin_space_left_action
- file_groupowner_etc_issue_net
- file_permissions_user_cfg
- network_nmcli_permissions
- sysctl_net_ipv4_conf_all_send_redirects
- gnome_gdm_disable_automatic_login
- rpm_verify_ownership
- configure_ssh_crypto_policy
- dconf_gnome_screensaver_lock_delay
- audit_rules_usergroup_modification_shadow
- file_permissions_etc_passwd
- ensure_pam_wheel_group_empty
- file_permissions_backup_etc_shadow
- kernel_module_dccp_disabled
- file_owner_crontab
- sudo_custom_logfile
- sshd_disable_tcp_forwarding
- sshd_disable_x11_forwarding
- ensure_gpgcheck_never_disabled
- audit_rules_dac_modification_fchmod
- file_owner_etc_issue_net
- account_disable_post_pw_expiration
- accounts_password_pam_lcredit
- sshd_enable_pam
- audit_rules_file_deletion_events_unlink
- set_firewalld_default_zone
- sshd_set_keepalive
- sysctl_net_ipv4_tcp_syncookies
- postfix_network_listening_disabled
- rsyslog_files_groupownership
- selinux_state
- no_direct_root_logins
- service_auditd_enabled
- file_permissions_grub2_cfg
- audit_rules_time_watch_localtime
- file_permissions_sshd_private_key
- accounts_password_pam_unix_remember
- audit_rules_time_adjtimex
- no_empty_passwords
- package_cryptsetup-luks_installed
- grub2_enable_selinux
- file_permissions_sshd_pub_key
- service_nftables_disabled
- accounts_password_pam_minlen
- file_permissions_cron_allow
- audit_rules_dac_modification_fchmodat
- use_pam_wheel_group_for_su
- grub2_audit_argument
- sysctl_net_ipv4_conf_all_secure_redirects
- auditd_audispd_syslog_plugin_activated
- file_owner_cron_d
- accounts_password_pam_pwhistory_remember_system_auth
- audit_rules_time_clock_settime
- file_permissions_etc_issue_net
- dir_perms_world_writable_sticky_bits
- service_rsyncd_disabled
- auditd_data_retention_space_left
- sysctl_kernel_randomize_va_space
- sysctl_net_ipv4_conf_all_rp_filter
- sshd_set_max_auth_tries
- audit_rules_dac_modification_chmod
- sysctl_net_ipv4_conf_default_accept_redirects
- package_telnet-server_removed
- audit_rules_suid_privilege_function
- audit_rules_time_settimeofday
- sshd_disable_root_login
- sysctl_net_ipv6_conf_default_accept_source_route
- audit_rules_usergroup_modification_group
- audit_rules_dac_modification_fsetxattr
- file_permissions_backup_etc_passwd
- audit_rules_dac_modification_removexattr
- file_permissions_sshd_config
- file_group_ownership_var_log_audit
- audit_rules_dac_modification_setxattr
- audit_rules_immutable
- package_tftp_removed
- network_sniffer_disabled
- auditd_name_format
- no_empty_passwords_etc_shadow
- package_dhcp_removed
- audit_rules_dac_modification_lremovexattr
- file_groupowner_at_allow
- package_aide_installed
- audit_rules_media_export
- rpm_verify_hashes
- file_permissions_cron_monthly
- package_ftp_removed
- securetty_root_login_console_only
- rsyslog_files_ownership
- accounts_password_last_change_is_in_past
- sshd_disable_rhosts
- chronyd_specify_remote_server
- file_groupowner_etc_group
- file_groupowner_backup_etc_group
- sysctl_net_ipv4_conf_default_send_redirects
- file_permissions_backup_etc_group
- audit_rules_dac_modification_fchownat
- file_groupowner_grub2_cfg
- kernel_module_usb-storage_disabled
- package_libselinux_installed
- accounts_password_pam_dcredit
- service_rpcbind_disabled
- audit_rules_file_deletion_events_rmdir
- sysctl_net_ipv4_icmp_ignore_bogus_error_responses
- file_owner_cron_weekly
- audit_rules_usergroup_modification_gshadow
- gid_passwd_group_same
- package_chrony_installed
- sshd_do_not_permit_user_env
- dconf_gnome_session_idle_user_locks
- sudo_require_authentication
- accounts_passwords_pam_faillock_deny
- file_groupowner_cron_daily
- file_owner_etc_shadow
- account_unique_name
- sshd_set_idle_timeout
- sysctl_net_ipv4_icmp_echo_ignore_broadcasts
- no_files_unowned_by_user
- sysctl_kernel_core_pattern
- file_groupowner_cron_monthly
- audit_rules_dac_modification_chown
- set_ip6tables_default_rule
- audit_rules_dac_modification_fremovexattr
- ensure_gpgcheck_globally_activated
- firewalld_loopback_traffic_trusted
- configure_crypto_policy
- wireless_disable_interfaces
- accounts_root_gid_zero
- accounts_password_warn_age_login_defs
- accounts_password_set_warn_age_existing
- aide_periodic_cron_checking
- file_groupowner_etc_shadow
- audit_rules_usergroup_modification_opasswd
- file_permissions_cron_hourly
- var_multiple_time_servers=generic
- var_auditd_admin_space_left_action=single
- var_auditd_space_left=100MB
- var_auditd_space_left_action=email
- var_auditd_name_format=fqd
- var_accounts_maximum_age_login_defs=90
- var_accounts_password_warn_age_login_defs=7
- var_password_pam_unix_remember=4
- var_password_pam_remember=4
- var_password_pam_remember_control_flag=requisite_or_required
- var_password_pam_dcredit=1
- var_password_pam_lcredit=1
- var_password_pam_minlen=12
- var_accounts_passwords_pam_faillock_deny=10
- var_accounts_passwords_pam_faillock_unlock_time=1800
- var_password_pam_tally2=10
- var_accounts_passwords_pam_tally2_unlock_time=1800
- var_password_hashing_algorithm=SHA512
- inactivity_timeout_value=15_minutes
- var_screensaver_lock_delay=10_seconds
- sshd_idle_timeout_value=15_minutes
- var_sshd_set_keepalive=0
- var_account_disable_post_pw_expiration=90
- var_system_crypto_policy=default_policy
- var_sshd_set_login_grace_time=60
- var_postfix_inet_interfaces=loopback-only
- var_selinux_policy_name=targeted
- var_selinux_state=enforcing
unselected_groups: []
platforms: !!set {}
cpe_names: !!set {}
platform: null
filter_rules: ''
policies:
- pcidss_4
title: PCI-DSS v4.0 Control Baseline for Red Hat Enterprise Linux 9
definition_location: /home/jcerny/work/git/content/products/rhel9/profiles/pci-dss.profile
documentation_complete: true
