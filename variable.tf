# vpc variables
variable "vpc_cidr" {
    default     = "10.0.0.0/16"
    description = "vpc cidr block"
    type        = string
}

variable "public_subnet_az1_cidr" {
    default     = "10.0.0.0/24"
    description = "public subnet az1 cidr block"
    type        = string
}

variable "public_subnet_az2_cidr" {
    default     = "10.0.1.0/24"
    description = "public subnet az2 cidr block"
    type        = string
}

variable "private_app_subnet_az1_cidr" {
    default     = "10.0.2.0/24"
    description = "private app subnet az1 cidr block"
    type        = string
}

variable "private_app_subnet_az2_cidr" {
    default     = "10.0.3.0/24"
    description = "private app subnet az2 cidr block"
    type        = string
}

variable "private_data_subnet_az1_cidr" {
    default     = "10.0.4.0/24"
    description = "private data subnet az1 cidr block"
    type        = string
}

variable "private_data_subnet_az2_cidr" {
    default     = "10.0.5.0/24"
    description = "private data subnet az2 cidr block"
    type        = string
}

# security group variables
variable "ssh_location" {
    default     = "0.0.0.0/0"
    description = "this ip address can ssh into the EC2 instances"
    type        = string
}

# rds variables
variable "database_snapshot_identifier" {
    default     = "arn:aws:rds:us-east-1:284526353281:snapshot:dev-rds-db"
    description = "the database snapshot arn"
    type        = string
}

variable "database_instance_class" {
    default     = "db.t2.micro"
    description = "the database instance type"
    type        = string
}

variable "database_instance_identifier" {
    default     = "dev-rds-db"
    description = "the database instance identifier"
    type        = string
}

variable "multi_az_deployment" {
    default     = false
    description = "create a standby db instance"
    type        = bool
}

# ALB variables
variable "ssl_certificate_arn" {
    default     = "arn:aws:acm:us-east-1:284526353281:certificate/66745465-7834-4863-a53a-2dd1f370a9f1"
    description = "ssl certificate arn"
    type        = string
}

# sns topic variables
variable "operator_email" {
    default     = "knomamien@gmail.com"
    description = "a valid email address"
    type        = string
}

# ASG variables
variable "launch_template_name" {
    default     = "dev-launch-template"
    description = "name of the launch template"
    type        = string
}

variable "ec2_image_id" {
    default     = "ami-020d1402e1ba28382"
    description = "ami id"
    type        = string
}

variable "ec2_instance_type" {
    default     = "t2.micro"
    description = "ec2 instance type"
    type        = string
}

variable "ec2_key_pair_name" {
    default     = "kings-key"
    description = "key pair name"
    type        = string
}

variable "domain_name" {
    default     = "naseopid.com"
    description = "domain name"
    type        = string
}

variable "record_name" {
    default     = "www"
    description = "sub-domain name"
    type        = string
}