resource "local_file" "pet" {
  filename = "/Users/anjankumarpaul/Desktop/pets.txt"
  content = "we love pets"
}

resource "random_pet" "my-pet" {
  prefix = "Mrs"
  separator = "."
  length = "1"
}


resource "local_file" "data" {
	filename = "/root/k8s.txt"
	content = "kubernetes the hard way!"
}


resource "kubernetes_namespace" "dev" {
  metadata {
    name = "development"
  }
}


resource "aws_instance" "ec2_instance" {
	  ami       =  "ami-0eda277a0b884c5ab" 
	  instance_type = "t2.large"
}


resource "aws_ebs_volume" "ec2_volume" {
	  availability_zone = "eu-west-1"
	  size  =    10
}

resource "local_file" "iac_code" {
  filename = "/opt/practice"
  content = "Setting up infrastructure as code"
}

resource "local_file" "time" {
  filename = "/root/time.txt"
  content = "Time stamp of this file is ${time_static.time_update.id}"

 }
 resource "time_static" "time_update" {
}

resource "tls_private_key" "pvtkey" {
    algorithm = "RSA"
    rsa_bits = 4096
  
}

resource "local_file" "whale" {
  filename = "/root/whale"
  depends_on = [local_file.krill]
}

resource "local_file" "krill" {
  filename = "/root/krill"
}

resource "tls_private_key" "pvtkey" {
    algorithm = "RSA"
    rsa_bits = 4096
  
}
resource "local_file" "key_details" {
    content = tls_private_key.pvtkey.private_key_pem
    filename = "/root/key.txt"
  
}

resource "random_uuid" "id1" {
   
}
resource "random_uuid" "id2" {
   
}
resource "random_uuid" "id3" {
   
}
resource "random_uuid" "id4" {
   
}
resource "random_uuid" "id5" {
   
}
resource "random_uuid" "id6" {
   
}
resource "random_uuid" "id7" {
   
}
resource "random_integer" "order1" {
  min     = 1
  max     = 99999
 
}
resource "random_integer" "order2" {
  min     = 1
  max     = 222222
 
}
