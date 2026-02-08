AWS 2-Tier Application – DevOps Hands-On Project



📌 Project Overview



This project demonstrates a production-style 2-tier application architecture on AWS, designed with high availability, scalability, and security best practices.



The application is hosted on an EC2 instance inside a custom VPC, served using a Python HTTP server, and follows real-world DevOps fundamentals.



⸻



🏗 Architecture Design



The solution is built using the following components:

&nbsp;	•	Custom VPC

&nbsp;	•	Public and Private Subnets across Availability Zones

&nbsp;	•	Internet Gateway for public access

&nbsp;	•	NAT Gateway for private subnet outbound access

&nbsp;	•	EC2 Instance hosting the web application

&nbsp;	•	Security Groups for controlled network access

&nbsp;	•	Python HTTP Server to serve the HTML page

Traffic Flow

User Browser

&nbsp;  ↓

Public IP / Load Entry

&nbsp;  ↓

EC2 Instance (Private Network)

&nbsp;  ↓

Web Application (HTML)

🛠 Technologies Used

&nbsp;	•	AWS EC2

&nbsp;	•	AWS VPC

&nbsp;	•	Subnets (Public \& Private)

&nbsp;	•	Security Groups

&nbsp;	•	Linux (Ubuntu)

&nbsp;	•	Python (http.server)

&nbsp;	•	HTML / CSS

&nbsp;	•	Git \& GitHub

&nbsp;	•	MobaXterm



⸻



🚀 Deployment Steps (High Level)

&nbsp;	1.	Created a custom VPC with public and private subnets

&nbsp;	2.	Launched an EC2 instance inside the VPC

&nbsp;	3.	Configured Security Groups to allow HTTP access

&nbsp;	4.	Deployed a custom HTML page

&nbsp;	5.	Started the application using:

python3 -m http.server 8000

6\.	Verified access using the EC2 public IP and port 8000



⸻



🌐 Application Output



The web page displays a success message confirming:

&nbsp;	•	EC2 deployment

&nbsp;	•	VPC configuration

&nbsp;	•	Secure networking

&nbsp;	•	Cloud learning progress

📈 Learning Outcomes

&nbsp;	•	Hands-on experience with AWS networking

&nbsp;	•	Understanding 2-tier architecture

&nbsp;	•	Secure EC2 access and deployment

&nbsp;	•	Real-world DevOps workflow

&nbsp;	•	GitHub version control best practices



⸻



🔮 Future Enhancements

&nbsp;	•	Add Application Load Balancer

&nbsp;	•	Implement Auto Scaling Group

&nbsp;	•	Use Terraform for Infrastructure as Code

&nbsp;	•	Add CI/CD pipeline

&nbsp;	•	Integrate CloudWatch monitoring



⸻



👨‍💻 Developed By



Jagan Pudari

