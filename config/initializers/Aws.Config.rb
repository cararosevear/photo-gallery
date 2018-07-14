 
require 'aws-sdk'
MY_REGION = 'us-east-1'
MY_BUCKET = 'project-cararosevear'

Aws.config.update({
  region: 'us-east-1',
  credentials: Aws::Credentials.new('AKIAIV6MO5LZPD4ZZ4LA', 'LYOWPgGTIquCNR07ahKbd+rn1gu7v07v2KPyAG/3') 
})

s3 = Aws::S3::Resource.new

# reference bucket by name
S3_BUCKET = s3.bucket(MY_BUCKET)

 