# Multi-Tier Application Deployment with Vagrant and VirtualBox

This project aims to deploy a multi-tier application on virtual machines using Vagrant and VirtualBox. The architecture involves several components, including NGINX, Tomcat, MySQL, RabbitMQ, and Memcached.

## Table of Contents
- [Introduction](#introduction)
- [Architecture](#architecture)
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Usage](#usage)
- [Contributing](#contributing)


## Introduction
This project (from the DevOps Udemy Course by Imran Teli) demonstrates how to deploy a multi-tier application on VMs using Vagrant and VirtualBox. The architecture includes a web server, application server, database server, cache server, and a message broker. The primary objective is to showcase the integration and deployment of these components in a virtualized environment.

## Architecture
The architecture of this project consists of the following components:

- **NGINX**: Serves as the reverse proxy and load balancer.
- **Tomcat**: Hosts the application server.
- **MySQL**: Provides the database services.
- **RabbitMQ**: Acts as the message broker.
- **Memcached**: Provides caching services to enhance performance.

![Architecture](https://viewer.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=vprofile.drawio#R%3Cmxfile%3E%3Cdiagram%20name%3D%22Page-1%22%20id%3D%22KuLwsc4NiL5TSp4XdD9x%22%3E3Zltb6M4EIB%2FTT6CbN4CH5u26WnVO1XqSrt7XyIHHOIGMAsmL%2F31NwY7CYE06V2yvS1VU3tsjDPPzHiGDuzbdP1QkHz%2BJ49oMrBQtB7YdwPLsmzbhj9SsmkkGHuokcQFixrZnuCZvVI1UUsrFtFSyRqR4DwRLG8LQ55lNBQtGSkKvmpPm%2FEkaglyEtOO4DkkSVf6jUVi3kh9F%2B3kf1AWz%2FWTMVIjUxIu4oJXmXrewLIRXJ7XDKdEr6Xml3MS8dWeyL4f2LcF56JppetbmkjlttU2PjK63XdBM3HODcvxl%2BpHkC3T0YtlV3w0fbx7NKxmlSVJKqq%2FRr1ZsdEKWtJCMNDXI5nS5ImXTDCewdCUC8HTgT2aizSBPoamnnuTsFjOETwHKVG9EHZKCxCAKnK5erqOpVWZ5LUqqJlwEk2mJCFZSItJTDNasBBm55zJ%2B%2B6XcHupHlRwQdQ%2BjADJJUXBF%2FSWJxwecJfxDNYfdVWktCb3Sdd7IqWyB8pTKooNTFGjNg6aW7R9e37TX%2B2MRYvme3YSIFNbAlEWGm8X31GChgL1DmjOaWjlgopQbk%2FqhlciYRkoR3uQFEaknNNIdU4yPhPsninMeCaUt2NL99UG5SNJmTebmbG13Ecv5o6hrErHrMrGiK5EfIgOgNumbwW7q8s%2FCHr4B%2F8dfvn16fWFvf79xXl5wt8Wrvf966uBT8Ovg1LNVupwNWeCPucklKMrUOMBJ5YkWol1CHMRnXXUW4%2Fgu9GtNCdYiwmpHixBxgkp93g1MQ4p4nv3z%2Bpry6gDpAfbUUae22LkWEEHytACD7S7YJzAvZJbYr9DgkZw1qguL8Scxzwjyf1OOtqxqj11O%2BeRSw%2BrlfpChdgoVyKV4G%2Fym7nyp4%2FfbX3VI6QQN%2FLolK4r6dVhthaPWaIXPupKJa%2BKkL6hCBX3YL2YitOmLJX0JvSCJhDsl%2B0D%2B%2BL4vDOiqgpHLK2TitNhM5EDo22ioGlEdEaqRByPq4exsX7gjZYiLYH2XAiZKN3I726Nq1weouaKLVhKI0ZMXsQglv1c9qEd8jTlWQktMa%2FSKfydyV8KHzfg2HM6%2BcrTkIhJAoZolkt5v%2BV6KF8b%2FeNmnsWXibwedg5C79B0hh3PxpbbdWs%2FMNG1zlvsfoRjgx6LzXd5v%2Bnq7g%2B1XN25W7d6m%2F3eE%2BRO8OXlQdnE4ndHiX%2Fv%2Fk7X%2Fd%2FKPf8n7o%2BHn8D%2FS5kVhwZCJoN6KarChQn%2BDgMQ5KkoTVm7jAsynTKR%2FjTkHAMHtre2kOMbrwlbOFnGLufQrt%2FOpRwfmajHobFvBk7Xp8HRTf8CTt17%2BPincUto%2BdFsRRWkZKqnoyMaO15b%2BMODeIe7unFs0%2FK66WdLT4FjBh7aXc6VdPYZjsgwymrnqK2%2FVO5Rt6VyLK%2FW0dNfD%2FDpYtmeFiSLJlnMsvVEzptg1x%2F6w5aXnEhmjxtg1zaULbjY9LpJbW0Nwx4L2JNfnPpnCIyaehlCMbwHXaY%2BBZXJD%2BA0IM9RAqPmbXgGxCbsDp1r0dbv0WStsu%2FkXhc9snq4a%2BHFoQcfkfKcykYOUoWT6clb5nwyPfF%2BUTbSXxrZH6P%2FsyrDX4IJ4zM5NYnbh4Fyfqfa4Dg5mkUaPNSJUCFGjVBhR9eH2z%2FR%2BlC4Z7xs%2B22OvncmPCmFKh%2FK%2FWib9PgYvecYfDv3xc7BK7y%2B3NfrKwq8a2W32PoEtKd8GgIEzXmVG0BPSCj67ZB89WOhWlnyjck43ZQ%2FE8NGaA2%2FlwRstQAPdVXSAtzz5nwrfAdgWdVu%2F5FWj%2B39u9K%2B%2Fwc%3D%3C%2Fdiagram%3E%3C%2Fmxfile%3E)

## Prerequisites
To run this project, you need the following installed on your local machine:

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Setup
Follow these steps to set up and deploy the application:

1. **Initialize and start the Vagrant environment:**
    ```sh
    vagrant up
    ```

2. **Provision the VMs:**
    Vagrant will automatically provision the VMs based on the configuration provided in the `Vagrantfile`.

3. **Access the application:**
    Once the setup is complete, you can access the application through the NGINX server at `http://localhost:8080`.

## Usage
- **NGINX**: Acts as the entry point for user requests, forwarding them to Tomcat.
- **Tomcat**: Handles the application logic and interacts with MySQL, Memcached, and RabbitMQ.
- **MySQL**: Stores application data.
- **Memcached**: Provides caching to improve application performance.
- **RabbitMQ**: Manages messaging and communication between different parts of the application.

## Contributing
Contributions are welcome! Please fork this repository and submit a pull request for any features, enhancements, or bug fixes. Ensure your code follows the existing style and includes appropriate tests.
