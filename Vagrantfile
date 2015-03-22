Vagrant.configure("2") do |config|
  #config.vm.box = "hashicorp/precise32"
  #config.vm.provision "shell", inline: "echo Hello!"
  #config.vm.network "private_network", type: "dhcp"

  #config.vm.define "web", primary: true do |web|
  #  web.vm.box = "hashicorp/precise32"
  #  web.vm.network "private_network", ip: "192.168.10.1"
  #end

  #(1..3).each do |i|
  #  config.vm.define "app-#{i}" do |app|
  #    app.vm.provision "shell",
  #      inline: "echo hello from node #{i}"
  #  end
  #end

  config.vm.define "akka1" do |akka1|
    akka1.vm.box = "hashicorp/precise32"
    akka1.vm.network "private_network", ip: "192.168.20.2"
    akka1.vm.hostname = "akka1.killrweather.cjmf.work"
    akka1.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
    end
  end

  config.vm.define "akka2" do |akka2|
    akka2.vm.box = "hashicorp/precise32"
    akka2.vm.network "private_network", ip: "192.168.20.3"
    akka2.vm.hostname = "akka2.killrweather.cjmf.work"
    akka2.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
    end
  end

  config.vm.define "akka3" do |akka3|
    akka3.vm.box = "hashicorp/precise32"
    akka3.vm.network "private_network", ip: "192.168.20.4"
    akka3.vm.hostname = "akka3.killrweather.cjmf.work"
    akka3.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
    end
  end

  config.vm.define "cadb1" do |cadb1|
    cadb1.vm.box = "hashicorp/precise32"
    cadb1.vm.network "private_network", ip: "192.168.30.2"
    cadb1.vm.hostname = "cadb1.killrweather.cjmf.work"
    cadb1.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
    end
  end

  config.vm.define "cadb2" do |cadb2|
    cadb2.vm.box = "hashicorp/precise32"
    cadb2.vm.network "private_network", ip: "192.168.30.3"
    cadb2.vm.hostname = "cadb2.killrweather.cjmf.work"
    cadb2.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
    end
  end

  config.vm.define "cadb3" do |cadb3|
    cadb3.vm.box = "hashicorp/precise32"
    cadb3.vm.network "private_network", ip: "192.168.30.4"
    cadb3.vm.hostname = "cadb3.killrweather.cjmf.work"
    cadb3.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
    end
  end

  config.vm.define "kafka1" do |kafka1|
    kafka1.vm.box = "hashicorp/precise32"
    kafka1.vm.network "private_network", ip: "192.168.40.2"
    kafka1.vm.hostname = "kafka1.killrweather.cjmf.work"
    kafka1.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
    end
  end

  config.vm.define "kafka2" do |kafka2|
    kafka2.vm.box = "hashicorp/precise32"
    kafka2.vm.network "private_network", ip: "192.168.40.3"
    kafka2.vm.hostname = "kafka2.killrweather.cjmf.work"
    kafka2.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
    end
  end

  config.vm.define "kafka3" do |kafka3|
    kafka3.vm.box = "hashicorp/precise32"
    kafka3.vm.network "private_network", ip: "192.168.40.4"
    kafka3.vm.hostname = "kafka3.killrweather.cjmf.work"
    kafka3.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
    end
  end

  config.vm.define "spark1" do |spark1|
    spark1.vm.box = "hashicorp/precise32"
    spark1.vm.network "private_network", ip: "192.168.50.2"
    spark1.vm.hostname = "spark1.killrweather.cjmf.work"
    spark1.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
    end
  end

  config.vm.define "spark2" do |spark2|
    spark2.vm.box = "hashicorp/precise32"
    spark2.vm.network "private_network", ip: "192.168.50.3"
    spark2.vm.hostname = "spark2.killrweather.cjmf.work"
    spark2.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
    end
  end

  config.vm.define "spark3" do |spark3|
    spark3.vm.box = "hashicorp/precise32"
    spark3.vm.network "private_network", ip: "192.168.50.4"
    spark3.vm.hostname = "spark3.killrweather.cjmf.work"
    spark3.vm.provision "puppet" do |puppet|
      puppet.options = "--verbose --debug"
    end
  end

  #config.vm.define "db_follower", autostart: false do |db_follower|
  #  db_follower.vm.box = "hashicorp/precise32"
  #end

end
