module "weasel-crm-resources" {
  source     = "./weasel-crm-resources/"
  cidr_block = "10.0.0.0/16"
  region = "us-east-1"
  tags = {
    Name = "Weasel CRM Project"
  }

  public_cidr1 = "10.0.101.0/24"
  public_cidr2 = "10.0.102.0/24"
  public_cidr3 = "10.0.103.0/24"

  private_cidr1 = "10.0.1.0/24"
  private_cidr2 = "10.0.2.0/24"
  private_cidr3 = "10.0.3.0/24"

  ssl_cert       = ""
  db_credentials = "weasel_crm_rds" #use your secret in AWS Secrets Manager
  s3_bucket_name = "weasel-crm-bucket-rodent" #use name of S3 buket

  max_size         = "2"
  min_size         = "2"
  desired_capacity = "2"
  
}