 terraform {
   backend "s3" {
     bucket         = "terraform-samir-mujkic"  
     key            = "terraform.tfstate"  
     region         = "eu-central-1"  
     dynamodb_table = "terraform-lock"  
 }
}