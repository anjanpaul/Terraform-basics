resource "aws_dynamodb_table" "cars" {
    name = "cars"
    hash_key = "VIN"
    billing_mode = "PAY_PER_REQUEST"
    attribute {
      name = "VIN"
      type = "S"
    }
  
}

resource "aws_dynamodb_table_item" "car-items" {
    table_name = aws_dynamodb_table.cars.name
    hash_key = aws_dynamodb_table.cars.hash_key
    item = <<EOF
    {
        "Manufacturer": {"S": "Toyota"},
        "Make": {"S": "Corolla"},
        "Year": {"N": "2020"},
        "VIN": {"S": "4Y1SL56578GFHRT78E"},
    }

    {
        "Manufacturer": {"S": "Honda"},
        "Make": {"S": "CRV"},
        "Year": {"N": "2020"},
        "VIN": {"S": "4Y1SL5FHFH8GFHRT78E"},
    }

    {
        "Manufacturer": {"S": "BMW"},
        "Make": {"S": "X7"},
        "Year": {"N": "2021"},
        "VIN": {"S": "4Y1STDJFJ78GFHRT78E"},
    }

    {
        "Manufacturer": {"S": "VOLVO"},
        "Make": {"S": ""},
        "Year": {"N": ""},
        "VIN": {"S": "4YFGEG56578GFHRT78E"},
    }
    EOF
  
}