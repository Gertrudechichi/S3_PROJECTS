# Cost-Efficient S3 Storage: Automating Lifecycle Rules


In this project, an S3 bucket was created with lifecycle rules using terraform.This project can be replicated several times with the same configuration because terraform provides a reusable template (Terraform is an Infrastructure as Code (IaC) tool).

An index.html file was uploaded to an s3 bucket serving as a static website for users.A prefix where photos will be uploaded dynamically was also made avaible in the s3 bucket.

The s3 bucket was managed by preconfigured lifecycle policy to transition the object to a less expensive storage class and automatically expire after its lifecycle.The object will be initially stored in the S3 standard class and transition to Standard-IA after 30 days.At the 60th day, teh object will be transitioned to Glacier Flexible retrieval for long term archival and it will expire after 90days from the time of upload in S3 standard and will be deleted.





