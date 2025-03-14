## Chapter 6
## Section: Create, Upload, Delete Buckets Using AWS CLI
#aws cli commands
# make a bucket
aws s3 mb s3://mybucket

# list all buckets
aws s3 ls

# upload a file to the s3 bucket
aws s3 cp MyKeyPair.pem s3://intro-aws-4524

# List contents in the s3 bucket
aws s3 ls s3://intro-aws-4524

# delete object
aws s3 rm s3://intro-aws-4524/MyKeyPair.pem

# delete all objects in a bucket
aws s3 rm s3://mywebsite-45h4 --recursive
# Delete the bucket
aws s3 rb --force s3://mywebsite-45h4






## Chapter 5
## Section: Configuring AWS CLI Locally
# Describe instances
aws ec2 describe-instances

## Chapter 5
## Section: AWS CLI Basic Commands
# Describe instance with a specific ID
aws ec2 describe-instances --instance-id i-091506deca22c701d

# Create a key pair
aws ec2 create-key-pair --key-name PaulosKeysTwo --query 'KeyMaterial' --output text > PaulosKeysTwo.pem

# Powershell:
PS C:\>aws ec2 create-key-pair --key-name MyKeyPair --query 'KeyMaterial' --output text | out-file -encoding ascii -filepath MyKeyPair.pem
