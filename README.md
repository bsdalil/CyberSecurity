# CyberSecurity
Coursework from Cyber Security Bootcamp
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

(Diagrams/Network_Diagram.jpg)

These files have been tested and used to generate a live ELK deployment on Azure. 
They can be used to either recreate the entire deployment pictured above. 
Alternatively, select portions of the install-elk.yml file may be used to install only certain pieces of it, such as Filebeat.

(Ansible/install-elk.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly protected, in addition to restricting traffic to the network.
The Load balancer protects the Availability of information on the network by evenly ditributing traffic through out the network.
The Jumpbox, similar to the Load balancer, restricts public access to servers within the network and ensures only 
the necessary individuals can access the servers when needed.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics.

The configuration details of each machine may be found below.


| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump-Box | Gateway  | 10.1.0.4   | Linux            |
| Web-1    |Web-Server| 10.1.0.5   | Linux            |
| Web-2    |Web-Server| 10.1.0.8   | Linux            |
| JumpELK  |Monitoring| 10.2.0.4   | Linux            |

### Access Policies

The most machines on the internal network are not exposed to the public Internet. 
Only the Jump-Box machine can accept connections from the public Internet. Access to this machine is only allowed from the following IP addresses:
My Public IP Address

Machines within the network can only be accessed by Jump-Box (10.1.0.4).

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | My Public IP address |
| Web-1    | No                  | 10.1.0.0/24          |
| Web-2    | No                  | 10.1.0.0/24          |
| JumpELK  | No                  | 10.1.0.0/24          |

### Elk Configuration
Ansible was used to automate the configuration of the ELK machine. No configuration was performed manually, which is advantageous because having to manually configure the entire system would have taken a much longer time to complete. Any potential errors created by manually configuring the system would have also added to the amount of time lost. Ansible with its easy-to-learn setup and configuration saves a lot of time.

The playbook implements the following tasks:

- First, you want to install the apt modules docker.io and python3-pip (they may need to be forcefully installed)
- Install the pip Docker module
- If your VM only has a small amount of memory, you need to increase the virtual memory and have the VM utilize more of it
- Download and Activate the docker ELK container(don’t forget to set image as sebp/elk:761)
- Finally, set the container to start up on boot

Your playbook should look like this screenshot when you're done:
(Diagrams/install-elk.yml)

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

(Ansible/Docker_ps.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:

10.1.0.5
10.1.0.8

We have installed the following Beats on these machines:

Filebeat
Metricbeat

These Beats allow us to collect the following information from each machine:

Filebeat collects audit logs, deprecation logs, server logs, and more.
Metricbeat collects metrics and statistics from the servers.
You can expect to see audit logs, which monitors how often someone accesses a file.
You can also expect to see metric data, this data informs adminstrators about how well a process is functioning 
and suggest potential improvements.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. 
Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the install-elk.yml file to the Ansible container.
- Update the hosts file to include the elk IP Address. You will also need to include "ansible_python_interpreter=/usr/bin/python3" beside the IP.
- Run the playbook, and navigate to http://[your.ELK-VM.External.IP]:5601/app/kibana to check that the installation worked as expected.

### Exploring Kibana
Once Kibana has been accessed you can import some sample data to the site, you can see what some of this sample data looks like in the Ansible directory:

/
/
/

##### (Ansible/Exploring_Kibana_1)
##### (Ansible/Exploring_Kibana_2)
##### (Ansible/Exploring_Kibana_3)
##### (Ansible/Exploring_Kibana_4)
##### (Ansible/Exploring_Kibana_5)
##### (Ansible/Exploring_Kibana_6)

/
/
/
