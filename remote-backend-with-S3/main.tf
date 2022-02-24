resource "local_file" "pet" {
    filename = "/root/pet.txt"
    content = "we loves pets!"
  
}


resource "aws_dynamodb_table" "state-locking" {
    name = "state-locking"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "lockID"
    aattribute {
      name = "lockID"
      type = "S"
    }
  
}

#terraform state show local_file.classics
