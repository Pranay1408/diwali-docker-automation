🎇 Project Diwali: Lights-On Automation 🎇
A fully automated DevOps pipeline that lights up an EC2 instance on AWS using Terraform, installs Docker via Ansible, and runs a celebratory container — all in the spirit of Diwali.



🌟 Concept
Like lighting diyas one after another, this project automates every step — from provisioning the EC2 instance to deploying a “Happy Diwali” web app inside Docker.
Each component represents a Diya of Automation:
Component	Role in Project
Terraform	Lights the first diya — provisions EC2 instance
Ansible	Lights the second diya — installs Docker and prepares the system
Docker	Lights the third diya — runs a Flask app saying “Happy Diwali from DevOps!”
AWS EC2	Acts as the glowing stage (the platform)
🪔 Project Architecture
Terraform  →  Ansible  →  Docker  →  AWS EC2  →  Diwali Web App
🎆 Folder Structure
project-diwali-docker-aws/
├── terraform/
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── .terraform.lock.hcl
└── ansible/
    ├── inventory
    ├── playbook.yml
    └── roles/
        └── diwali_docker/
            ├── tasks/main.yml
            ├── files/
            │   ├── app.py
            │   └── Dockerfile
🌼 Step 1: Terraform — Provision EC2
Configure provider.tf, variables.tf, and main.tf (see above).
Run Terraform:
cd terraform
terraform init
terraform apply -auto-approve
terraform output -raw public_ip
This creates an Ubuntu 22.04 EC2 instance with your SSH key.
💫 Step 2: Ansible — Install Docker
Create inventory file with your EC2 public IP.
Prepare playbook.yml and roles/diwali_docker/tasks/main.yml (fixed version included).
Run the playbook:
cd ansible
ansible-playbook -i inventory playbook.yml
🕯️ Step 3: Docker App — The Celebration
Your Flask app will display:
🪔 Happy Diwali from DevOps! 🪔
Automated with Terraform + Ansible + Docker + AWS
Access it at:
http://<EC2_PUBLIC_IP>:5000
💥 Optional Add-ons
Add GitHub Actions CI/CD to auto-provision Terraform infra and trigger Ansible.
Push Docker image to DockerHub or AWS ECR.
Use a Diwali-themed HTML template (with diyas, lights, and colors).
🎉 Suggested GitHub Repo Name
diwali-docker-automation
🔹 Tips
Make sure your AWS credentials are set in the environment (AWS_ACCESS_KEY_ID & AWS_SECRET_ACCESS_KEY).
Use Ubuntu 22.04 LTS AMI for smooth Docker installation.
Enjoy automating and sharing your festive DevOps pipeline! 🪔✨
