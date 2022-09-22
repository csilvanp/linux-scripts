## Shell scripts for Ubuntu - Linux (IaC)

This repo contains some scripts made to generate and provide infrastructures as code on Ubuntu (22.04), automatizing and replacing manual adjustments that may be necessary.

You can run them on your local machine, but I recommend to previosly save a snapshot of the actual OS state. Also, you could create a VM instance in a software of your preference, or use a free [AWS EC2 instance](https://aws.amazon.com/pt/ec2/).

The scripts run on root level, so, you will need to change the user to root.

```shell
  user@ubuntu:~$ sudo -i # ask for user's password
  user@ubuntu:~$ su - # ask for root's password
```

If you're using a EC2 instance, you may need to set root password first to access.

```shell
  user@ubuntu:~$ sudo passwd root
```

To run a script, you'll need to give an execution permission with chmod:

```shell
  chmod +x script_name.sh
```

<br>

_This scripts were made as project from DIO Linux course._
