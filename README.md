# Cost-Efficient S3 Storage: Automating Lifecycle Rules


In this project, an S3 bucket was preconfigured with lifecycle rules to automatically transition and expire objects after a set duration.
This automation brings about operational efficiency and improves cost savings assocaiated with storing documents.
In this project the bucket was configured to host static website contents (index.html file) 
Also, IAM users with the necessary permissions are allowed to upload images in a desginated prefix of teh s3 bucket which will server the static website.

The bucket's lifecycle policy automatically manages objects, transitioning them through different storage classes based on their age. Initially, objects are stored in S3 Standard. After 30 days, they are moved to Standard-IA for less frequent access. At 60 days, they are transitioned to Glacier Flexible Retrieval for long-term archival. Finally, after 90 days, the objects expire and are deleted, ensuring efficient data management and cost optimization.

# Architecture Diagram
https://github.com/user-attachments/assets/f46f9149-1766-4455-958f-202279a13012

# Terraform demo AWS provider
https://github.com/user-attachments/assets/11ed1846-b912-45b1-9931-534ecb66bb5f

# AWS Console File Upload Demo and Validation of Infrastructure Provisioned using Terraform


![image alt](https://github.com/Gertrudechichi/S3_PROJECTS/blob/bcf18ef752dd4812116aac0f024dba0570c6396e/AWSConsoleScreenshots/Screenshot%202025-07-05%20161150.png)


![image alt](https://github.com/Gertrudechichi/S3_PROJECTS/blob/bcf18ef752dd4812116aac0f024dba0570c6396e/AWSConsoleScreenshots/Screenshot%202025-07-05%20161238.png)


![image alt](https://github.com/Gertrudechichi/S3_PROJECTS/blob/bcf18ef752dd4812116aac0f024dba0570c6396e/AWSConsoleScreenshots/Screenshot%202025-07-05%20161310.png)


![image alt](https://github.com/Gertrudechichi/S3_PROJECTS/blob/bcf18ef752dd4812116aac0f024dba0570c6396e/AWSConsoleScreenshots/Screenshot%202025-07-05%20161542.png)


![image alt](https://github.com/Gertrudechichi/S3_PROJECTS/blob/bcf18ef752dd4812116aac0f024dba0570c6396e/AWSConsoleScreenshots/Screenshot%202025-07-05%20161642.png)







