/*--------------------------------------------------------------------------------------------------
  Global 
--------------------------------------------------------------------------------------------------*/

variable "region" {
  description = "Region where the resources will be deployed"
  type        = string
  default     = "us-east-1"
}

/*--------------------------------------------------------------------------------------------------
  VPC
--------------------------------------------------------------------------------------------------*/

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "planadevopschallenge2-vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string
  default     = "10.0.0.0/16"
}


variable "public_subnets" {
  description = "Public subnets where the ghost instances will be deployed"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "private_subnets" {
  description = "Private subvnets where the RDS instance will be deployed"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}


/*--------------------------------------------------------------------------------------------------
  EC2 / ASG
--------------------------------------------------------------------------------------------------*/

variable "ec2_instance_type" {
  description = "EC2 instance type used for Ghost, only t2 micro is free tier eligible"
  type        = string
  default     = "t3a.large"
}

variable "asg_desired_capacity_wg1" {
  description = "ASG desired capacity for Worker Group 1"
  type        = string
  default     = 2
}

variable "asg_desired_capacity_wg2" {
  description = "ASG desired capacity for Worker Group 2"
  type        = string
  default     = 1
}


