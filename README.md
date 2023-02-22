# Terraform-provisioner-module
****Terraform script to deploy webserver quickly via provisioner module****

</br>

We can use provisioners to model specific actions on the local machine or on a remote machine in order to prepare servers or other infrastructure objects for service.</br>
For that, we use  the local-exec provisioner to run the CLI for your target system in order to create, update, or otherwise interact with remote objects in that system.</br>
</br>

In this project, Created a provisioner resource for webserver installation and to host a sample website after launching an instance "web" via terraform resource block usage.</br>
</br>

This setup contains only 3 terraform files and a userdata : </br>

##### provider.tf

Here we declare which provider is used for deploying this multi tier setup. </br>
We choose AWS provider so that AWS resources can be used.</br>
##### variables.tf
All the variables needed for the deployment are declared here.</br>
a) Project name which can be used as tags on resources. </br>
b) Region in which this project is deployed. Here "ap-south-1", Mumbai region is used.</br>
c) IAM user credentials (from Programmatic access)</br></br>
d) Instance details including Instance type and AMI used. Here, t2.micro and AmazonLinux AMI are chosen.</br>

##### webserver-install.sh
Thise is a bash script to install apache webserver and host a webpage. This acts as userdata to the provisioner module.

##### main.tf
Resource block to create an Ec2 instance with hard coded SSH key and secutity group quickly.</br>
Provisional module uses the above userdata "webserver-install.sh".
New instance will be created with the webserver installed and website setup using the userdata file.

Once these terraform scripts are saved in a project directory on the server where these are deployed, following terraform commands are used to build the setup.
</br>
` terraform init`
</br>
` terraform fmt`
</br>
` terraform validate`
</br>
` terraform plan`
</br>
` terraform apply`
</br>
</br>
</br>
</br>
***Additional info:*** this setup can also be removed via terraform.
For that, the command given below is used.</br>
`terraform destroy`
</br>
</br>
</br>
</br>

****Thank you..****







