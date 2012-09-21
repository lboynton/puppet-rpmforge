class rpmforge {
    yumrepo { 'rpmforge':
        baseurl    => 'http://apt.sw.be/redhat/el${::os_maj_version}/en/${::architecture}/',
        enabled    => 1,
        gpgcheck   => 1,
        name       => 'RHEL ${::os_maj_version} - RPMforge.net - dag',
        mirrorlist => 'http://apt.sw.be/redhat/el${::os_maj_version}/en/mirrors-rpmforge',
        gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-rpmforge-dag',
    }
    
    file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-rpmforge-dag":
      ensure => present,
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      source => "puppet:///modules/rpmforge/RPM-GPG-KEY-rpmforge-dag",
    }
    
    epel::rpm_gpg_key{ "rpmforge-dag":
      path => "/etc/pki/rpm-gpg/RPM-GPG-KEY-rpmforge-dag",
    }
}
