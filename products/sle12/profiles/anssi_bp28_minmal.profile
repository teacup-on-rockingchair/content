documentation_complete: true

metadata:
    SMEs:
        - abergmann

title: 'ANSSI-BP-028 (minimal)'

description: |-
    This profile contains configurations that align to ANSSI-BP-028 v1.2 at the minimal hardening level.

    ANSSI is the French National Information Security Agency, and stands for Agence nationale de la sécurité des systèmes d'information.
    ANSSI-BP-028 is a configuration recommendation for GNU/Linux systems.

    A copy of the ANSSI-BP-028 can be found at the ANSSI website:
    https://www.ssi.gouv.fr/administration/guide/recommandations-de-securite-relatives-a-un-systeme-gnulinux/

    Only the components strictly necessary to the service provided by the system should be installed.
    Those whose presence can not be justified should be disabled, removed or deleted.
    Performing a minimal install is a good starting point, but doesn't provide any assurance
    over any package installed later.
    Manual review is required to assess if the installed services are minimal.

selections:

    # Title: Minimization of installed services - 13 rules

    #TBD- package_dhcp_removed
    #TBD- package_rsh_removed
    - package_rsh-server_removed
    #TBD- package_sendmail_removed
    - package_talk_removed
    - package_talk-server_removed
    - package_telnet_removed
    - package_telnet-server_removed
    #TBD- package_tftp_removed
    #TBD- package_tftp-server_removed
    - package_xinetd_removed
    #TBD- package_ypbind_removed
    #TBD- package_ypserv_removed

    # Title: Defense in-depth principle - 3 rules

    - sudo_remove_no_authenticate
    #TBD- package_rsyslog_installed
    #TBD- service_rsyslog_enabled


    # Title: Regular updates - 5 rules

    - security_patches_up_to_date
    #TBD - package_dnf-automatic_installed
    #TBD - timer_dnf-automatic_enabled
    # Configure dnf-automatic to Install Available Updates Automatically
    #TBD - dnf-automatic_apply_updates
    # Configure dnf-automatic to Install Only Security Updates
    #TBD - dnf-automatic_security_updates_only

    # Title: Choice of package repositories - 4 rules

    - ensure_gpgcheck_never_disabled
    - ensure_gpgcheck_globally_activated
    #TBD- ensure_gpgcheck_local_packages
    - ensure_redhat_gpgkey_installed


    # Title: Administrator password robustness - 13 rules

    # Renew passwords every 90 days
    - var_accounts_maximum_age_login_defs=90
    - accounts_maximum_age_login_defs

    # Ensure passwords with minimum of 18 characters
    - var_password_pam_minlen=18
    - accounts_password_pam_minlen
    # Enforce password lenght for new accounts
    - var_accounts_password_minlen_login_defs=18
    #TBD- accounts_password_minlen_login_defs
    # Require at Least 1 Special Character in Password
    - var_password_pam_ocredit=1
    #TBD - accounts_password_pam_ocredit
    # Require at Least 1 Numeric Character in Password
    - var_password_pam_dcredit=1
    - accounts_password_pam_dcredit
    # Require at Least 1 Uppercase Character in Password
    - var_password_pam_ucredit=1
    - accounts_password_pam_ucredit
    # Require at Least 1 Lowercase Character in Password
    - var_password_pam_lcredit=1
    - accounts_password_pam_lcredit

    # Lock out users after 3 failed authentication attempts within 15 min
    - var_accounts_passwords_pam_faillock_fail_interval=900
    #TBD- accounts_passwords_pam_faillock_interval
    - var_accounts_passwords_pam_faillock_deny=3
    - accounts_passwords_pam_faillock_deny
    #TBD- accounts_passwords_pam_faillock_deny_root
    # Automatically unlock users after 15 min to prevent DoS
    - var_accounts_passwords_pam_faillock_unlock_time=900
    - accounts_passwords_pam_faillock_unlock_time

    # Do not reuse last two passwords
    - var_password_pam_unix_remember=2
    - accounts_password_pam_unix_remember

    # Title: Protecting stored passwords

    # ENCRYPT_METHOD, system default is SHA512
    - set_password_hashing_algorithm_systemauth
    # The default salt size is secure enough:
    # SHA_CRYPT_MIN_ROUNDS 65536
    - var_password_pam_unix_rounds=65536
    #TBD- accounts_password_pam_unix_rounds_system_auth
    #TBD- accounts_password_pam_unix_rounds_password_auth

    # Title: Executables with setuid and setgid bits - 2 rules

    #TBD- file_permissions_unauthorized_suid
    #TBD- file_permissions_unauthorized_sgid

    # Title: User authentication running sudo
    - sudo_remove_nopasswd
