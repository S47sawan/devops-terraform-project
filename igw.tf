#---------------------------------------------------------------------------------
# Create Internet Gateway
#---------------------------------------------------------------------------------

resource "aws_internet_gateway" "dev-igw" {
  vpc_id = aws_vpc.env_vpc[0].id

  tags = merge(
    local.common_tags,
    {
      Name = "dev-igw"
    },
  )
}
