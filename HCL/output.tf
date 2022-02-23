output "id1" {
   value = random_uuid.id1.result
}
output "id2" {
    value = random_uuid.id2.result
   
}
output "id3" {
    value = random_uuid.id3.result
   
}

output "id4" {
    value = random_uuid.id4.result
   
}
output "id5" {
    value = random_uuid.id5.result
}
   
output "id6" {
    value = random_uuid.id6.result
   
}
output "id7" {
    value = random_uuid.id7.result
   
}
output "order1" {
 value = random_integer.order1.result
 
}
output "order2" {
 value = random_integer.order1.result
 
}


resource "local_file" "key_data" {
        filename       = "/tmp/.pki/private_key.pem"
        content = tls_private_key.private_key.private_key_pem
        file_permission =  "0400"
}
resource "tls_private_key" "private_key" {
  algorithm   = "RSA"
  rsa_bits  = 4096
}
resource "tls_cert_request" "csr" {
  key_algorithm   = "ECDSA"
  private_key_pem = file("/tmp/.pki/private_key.pem")
  depends_on = [ local_file.key_data ]

  subject {
    common_name  = "flexit.com"
    organization = "FlexIT Consulting Services"
  }
}