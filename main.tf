resource "aws_vpc" "vpc_iac_clc11" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc_marcio_iac_clc11"
  }
}


resource "aws_subnet" "sub_net_pub_1a" {
  vpc_id     = aws_vpc.vpc_iac_clc11.id
  cidr_block = "10.0.10.0/24"

  tags = {
    Name = "iac-public_subnet-1a"
  }
}


resource "aws_subnet" "sub_net_pub_1c" {
  vpc_id     = aws_vpc.vpc_iac_clc11.id
  cidr_block = "10.0.20.0/24"

  tags = {
    Name = "iac-public-subnet-1c"
  }
}


resource "aws_subnet" "sub_net_priv_1a" {
  vpc_id     = aws_vpc.vpc_iac_clc11.id
  cidr_block = "10.0.100.0/24"

  tags = {
    Name = "iac-private_subnet-1a"
  }
}


resource "aws_subnet" "sub_net_priv_1c" {
  vpc_id     = aws_vpc.vpc_iac_clc11.id
  cidr_block = "10.0.200.0/24"

  tags = {
    Name = "iac-private_subnet-1c"
  }
}


resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_iac_clc11.id

  tags = {
    Name = "igw-vpc-iac-clc11"
  }
}


resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.vpc_iac_clc11.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "iac-public_rt"
  }
}


resource "aws_route_table_association" "public-1a" {
  subnet_id      = aws_subnet.sub_net_pub_1a.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public-1c" {
  subnet_id      = aws_subnet.sub_net_pub_1c.id
  route_table_id = aws_route_table.public_rt.id
}


resource "aws_eip" "ip_nat_1a" {
  domain   = "vpc"
}

resource "aws_eip" "ip_nat_1c" {
  domain   = "vpc"
}



resource "aws_nat_gateway" "natgateway-1a" {
  allocation_id = aws_eip.ip_nat_1a.id
  subnet_id     = aws_subnet.sub_net_pub_1a.id

  tags = {
    Name = "iac-natgateway-1a"
  }
}


resource "aws_nat_gateway" "natgateway-1c" {
  allocation_id = aws_eip.ip_nat_1c.id
  subnet_id     = aws_subnet.sub_net_pub_1c.id

  tags = {
    Name = "iac-natgateway-1c"
  }
}


resource "aws_route_table" "private_rt_1a" {
  vpc_id = aws_vpc.vpc_iac_clc11.id

  route {
    cidr_block = "10.0.100.0/24"
    nat_gateway_id = aws_nat_gateway.natgateway-1a.id
  }

  tags = {
    Name = "iac_private_rt_1a"
  }
}


resource "aws_route_table" "private_rt_1c" {
  vpc_id = aws_vpc.vpc_iac_clc11.id

  route {
    cidr_block = "10.0.200.0/24"
    nat_gateway_id = aws_nat_gateway.natgateway-1c.id
  }

  tags = {
    Name = "iac_private_rt_1c"
  }
}


resource "aws_route_table_association" "private_1a" {
  subnet_id      = aws_subnet.sub_net_priv_1a.id
  route_table_id = aws_route_table.private_rt_1a.id
}

resource "aws_route_table_association" "private_1c" {
  subnet_id      = aws_subnet.sub_net_priv_1c.id
  route_table_id = aws_route_table.private_rt_1c.id
}

###########OUTPUT SESSION########

output "vpc_id" {
    value = "Minha vpc id: ${aws_vpc.vpc_iac_clc11.id}"
}

output "vpc_arn" {
    value = "Minha vpc arn: ${aws_vpc.vpc_iac_clc11.arn}"
}