Step 1: Create an AWS Account
Sign up: If you don't have an AWS account, go to AWS Free Tier and sign up for a free account.
Log in: Once your account is set up, log in to the AWS Management Console.
Step 2: Launch an EC2 Instance
Navigate to EC2: In the AWS Management Console, find and select "EC2" under the "Compute" section.

Launch Instance:

Click "Launch Instance".
Choose an Amazon Machine Image (AMI). For Docker, you can use Amazon Linux 2, Ubuntu, or any other Linux distribution. Amazon Linux 2 is a good choice.
Choose an instance type. The t2.2 extra large type is sufficient for testing and is free-tier eligible.
Configure instance details. You can leave the defaults or customize according to your needs.
Add storage. The default settings are usually sufficient.
Add tags. (Optional) You can add tags to your instance for better identification.
Configure the security group. Ensure that you allow SSH access (port 22) from your IP address. If you plan to use Docker to host web applications, you might also want to open ports like 80 (HTTP) and 443 (HTTPS). and TCP 80 AND port 3000
Launch and Connect:

Click "Review and Launch".
Review your settings and click "Launch".
Select or create a new key pair. This key pair will be used to SSH into your instance. Download the key pair file (a .pem file) and keep it secure.
Click "Launch Instances".
Step 3: Connect to Your EC2 Instance
Find Public DNS: In the EC2 Dashboard, select your instance and note its Public DNS (IPv4) address.
Connect via SSH:
Open a terminal (on Mac/Linux) or a tool like Mobaxterm (on Windows).


 Install Docker on Your EC2 Instance  

1. Update the Package Index:
sudo yum update -y
For Ubuntu

 sudo apt-get update
 Install Docker:


  sudo amazon-linux-extras install docker -y
  
sudo apt-get install docker.io -

docker --version
You should see the Docker version information.

Step 1:Clone the repository from GitHub:

 git clone <GitHub_Repository_Link>
cd <Repository_Directory>
Step 2: Create a Dockerfile
Step 4: Push the Docker Image to a Registry
Step 5: Install MicroK8s
Step 6: Deploy the Docker Image to the Kubernetes Cluster
   
     1.  Create a Kubernetes deployment configuration file
     2. Create a Kubernetes service configuration file
     3.Apply the deployment and service configuration
Step 7:
  Step 7: Access the Application
Retrieve the external IP of the service:
