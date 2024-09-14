# poc-devsecops-cicd-jenkins-ansible-vagrant-vm-virtualbox
Provision CICD Node-Master &amp; Node-Worker using Infrastructure as a Code (Vagrant) instead provisioning it manually.

## Install WSL For Windows 11 / Windows 10 Users

You can install WSL from the command line. Open a PowerShell prompt as an Administrator (we recommend using [Windows Terminal](https://github.com/microsoft/terminal?tab=readme-ov-file#installing-and-running-windows-terminal)) and run:

```{code-block} text
> wsl --install
```

This command will enable the features necessary to run WSL and also install the default Ubuntu distribution of Linux available in the Microsoft Store. It is recommended to reboot your machine after this initial installation to complete the setup. You can also install WSL from the Microsoft Store.

## Install WSL Ubuntu Distro Via Command Line Interface
You can use whichever Linux distribution that you like, however in this example we are going to install Ubuntu Distro. 

It is possible to install the same Ubuntu versions available on the Microsoft Store directly from the command line.

**Step 1: List Availble Distribution**

In a PowerShell terminal, you can run `wsl --list --online` to see an output with all available distros and versions:

```{code-block} text
The following is a list of valid distributions that can be installed.
The default distribution is denoted by '*'.
Install using 'wsl --install -d <Distro>'.

  NAME                                   FRIENDLY NAME
* Ubuntu                                 Ubuntu
  Debian                                 Debian GNU/Linux
  kali-linux                             Kali Linux Rolling
  Ubuntu-18.04                           Ubuntu 18.04 LTS
  Ubuntu-20.04                           Ubuntu 20.04 LTS
  Ubuntu-22.04                           Ubuntu 22.04 LTS
  Ubuntu-24.04                           Ubuntu 24.04 LTS
...

``` 

Your list may be different once new distributions become available.  

**Step 2: Install The Linux Distribution (Ubuntu)**

You can install a version using a NAME from the output:

```{code-block} text
> wsl --install -d Ubuntu-24.04
```

You'll see an indicator of the installation progress in the terminal:

```{code-block} text
:class: no-copy
Installing: Ubuntu 24.04 LTS
[==========================72,0%==========                 ]
```

**Step 3: Check Currently Installed Distribution**

Use `wsl -l -v` to see all your currently installed distros and the version of WSL they are using:

```{code-block} text
:class: no-copy
  NAME            STATE           VERSION
  Ubuntu-20.04    Stopped         2
* Ubuntu-24.04    Stopped         2
```



## Install & Configure Ansible Using APT
To install and configure Ansible on Ubuntu, you can follow these steps. Ansible is an open-source automation tool that simplifies configuration management, application deployment, and task automation.

**Step 1: Update Package Lists**

First, make sure your package lists are up to date:

```bash
sudo apt update
```

**Step 2: Install Ansible**

You can install Ansible directly from the official Ubuntu repositories using the following command:

```bash
sudo apt install -y ansible
```

**Step 3: Verify Ansible Installation**

After the installation is complete, you can verify that Ansible is installed by checking its version:

```bash
ansible --version
```
## References
- For Detailed WSL2 (Ubuntu Distro) installation documentation you can refer to this link [Windows WSL2 Ubuntu Distro Installation](https://github.com/ubuntu/WSL/blob/main/docs/guides/install-ubuntu-wsl2.md))

- For Detailed Ansible installation documentation you can refer to this link [Installation and Configure Ansible on Ubuntu](https://gist.githubusercontent.com/NotHarshhaa/dca2a689284e5df19632ef4b2bd5955e/raw/3f795dec121fcbd277eb246df7aa99d62612442b/ansible-install.md))

