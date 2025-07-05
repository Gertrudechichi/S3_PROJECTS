# Cost-Efficient S3 Storage: Automating Lifecycle Rules


This project sets up an S3 bucket with lifecycle rules using Terraform, allowing for easy replication. The bucket serves as a static website, hosting an index.html file, and also allows users to upload photos to a designated prefix.

The bucket's lifecycle policy automatically manages objects, transitioning them through different storage classes based on their age. Initially, objects are stored in S3 Standard. After 30 days, they are moved to Standard-IA for less frequent access. At 60 days, they are transitioned to Glacier Flexible Retrieval for long-term archival. Finally, after 90 days, the objects expire and are deleted, ensuring efficient data management and cost optimization.

# Architecture Diagram
https://github.com/user-attachments/assets/f46f9149-1766-4455-958f-202279a13012

# Terraform demo AWS provider
https://github.com/user-attachments/assets/11ed1846-b912-45b1-9931-534ecb66bb5f







