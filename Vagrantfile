# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  #config.vm.box = "base"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL

  (1..3).each do |i|
    # akka
    config.vm.define "akka-#{i}" do |akka|
      akka.vm.box = "precise64"

      # network
      akka.vm.network "private_network", ip: "192.168.10.#{i+1}"
      akka.vm.hostname = "akka-#{i}.killrweather.cjmf.work"

      # provisioning
      # shell
      akka.vm.provision "shell", inline: "echo hello from akka #{i}; apt-get update --fix-missing"
      akka.vm.provision :shell do |shell|
        shell.inline = "mkdir -p /etc/puppet/modules;
                          (puppet module install example42/puppi; true)
                          (puppet module install puppetlabs/stdlib; true)
                          (puppet module install saz/vim; true)
                          (puppet module install puppetlabs/java; true)
                          (puppet module install xhawk/puppet-akka; true)"
      end

      # puppet
      akka.vm.provision "puppet" do |puppet|
        puppet.facter = {}
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "site-akka.pp"
      end
    end

    # cassandra
    config.vm.define "cadb-#{i}" do |cadb|
      cadb.vm.box = "precise64"

      # network
      cadb.vm.network "private_network", ip: "192.168.20.#{i+1}"
      cadb.vm.hostname = "cadb-#{i}.killrweather.cjmf.work"

      # provisioning
      # shell
      cadb.vm.provision "shell", inline: "echo hello from cadb #{i}; apt-get update --fix-missing"
      cadb.vm.provision :shell do |shell|
        shell.inline = "mkdir -p /etc/puppet/modules;
                          (puppet module install example42/puppi; true)
                          (puppet module install puppetlabs/stdlib; true)
                          (puppet module install saz/vim; true)
                          (puppet module install puppetlabs/java; true)
                          (puppet module install gini/cassandra; true)"
      end

      # puppet
      cadb.vm.provision "puppet" do |puppet|
        puppet.facter = {}
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "site-cadb.pp"
      end
    end

    # kafka
    config.vm.define "kafka-#{i}" do |kafka|
      kafka.vm.box = "precise64"

      # network
      kafka.vm.network "private_network", ip: "192.168.30.#{i+1}"
      kafka.vm.hostname = "kafka-#{i}.killrweather.cjmf.work"

      # provisioning
      # shell
      kafka.vm.provision "shell", inline: "echo hello from kafka #{i}; apt-get update --fix-missing"
      kafka.vm.provision :shell do |shell|
        shell.inline = "mkdir -p /etc/puppet/modules;
                          (puppet module install example42/puppi; true)
                          (puppet module install puppetlabs/stdlib; true)
                          (puppet module install saz/vim; true)
                          (puppet module install puppetlabs/java; true)
                          (puppet module install wikimedia/puppet-kafka; true)"
      end

      # puppet
      kafka.vm.provision "puppet" do |puppet|
        puppet.facter = {}
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "site-kafka.pp"
      end
    end

    # spark
    config.vm.define "spark-#{i}" do |spark|
      spark.vm.box = "precise64"

      # network
      spark.vm.network "private_network", ip: "192.168.40.#{i+1}"
      spark.vm.hostname = "spark-#{i}.killrweather.cjmf.work" 

      # provisioning
      # shell
      spark.vm.provision "shell", inline: "echo hello from spark #{i}; apt-get update --fix-missing"
      spark.vm.provision :shell do |shell|
        shell.inline = "mkdir -p /etc/puppet/modules;
                          (puppet module install example42/puppi; true)
                          (puppet module install puppetlabs/stdlib; true)
                          (puppet module install saz/vim; true)
                          (puppet module install puppetlabs/java; true)
                          (puppet module install stefanvanwouw/puppet-spark; true)"
      end

      # puppet
      spark.vm.provision "puppet" do |puppet|
        puppet.facter = {}
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "site-spark.pp"
      end
    end

    # web
    config.vm.define "web-#{i}" do |web|
      web.vm.box = "precise64"

      # network
      web.vm.network "private_network", ip: "192.168.50.#{i+1}"
      web.vm.hostname = "web-#{i}.killrweather.cjmf.work"

      # provisioning
      # shell
      web.vm.provision "shell", inline: "echo hello from web #{i}; apt-get update --fix-missing"
      web.vm.provision :shell do |shell|
        shell.inline = "mkdir -p /etc/puppet/modules;
                          (puppet module install example42/puppi; true)
                          (puppet module install puppetlabs/stdlib; true)
                          (puppet module install saz/vim; true)"
      end

      # puppet
      web.vm.provision "puppet" do |puppet|
        puppet.facter = {}
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "site-web.pp"
      end
    end

    # zookeeper
    config.vm.define "zoo-#{i}" do |zoo|
      zoo.vm.box = "precise64"

      # networking
      zoo.vm.network "private_network", ip: "192.168.60.#{i+1}"
      zoo.vm.hostname = "zoo-#{i}.killrweather.cjmf.work"

      # provisioning
      # shell
      zoo.vm.provision "shell", inline: "echo hello from zoo #{i}; apt-get update --fix-missing"
      zoo.vm.provision :shell do |shell|
        shell.inline = "mkdir -p /etc/puppet/modules;
                          (puppet module install example42/puppi; true)
                          (puppet module install puppetlabs/stdlib; true)
                          (puppet module install saz/vim; true)
                          (puppet module install puppetlabs/java; true)
                          (puppet module install wikimedia/puppet-zookeeper; true)"
      end

      # puppet
      zoo.vm.provision "puppet" do |puppet|
        puppet.facter = {}
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "site-zoo.pp"
      end
    end
  end
end
