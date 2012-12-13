log_level                :info
log_location             STDOUT
node_name                'john'
client_key               ENV['HOME'] + '/.chef/john.pem'
validation_client_name   'chef-validator'
validation_key           ENV['HOME'] + '/.chef/validation.pem'
chef_server_url          'http://chef-ops.amz.relateiq.com:4000'
cache_type               'BasicFile'
cache_options( :path => ENV['HOME'] + '/.chef/checksums' )
cookbook_path [ ENV['HOME'] + '/git/chef/cookbooks' ]

encrypted_data_bag_secret ENV['HOME'] + '/.chef/riq-aws-bag-key'

knife[:aws_access_key_id]     = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
knife[:aws_ssh_key_id]        = 'us-west-1-chef'
knife[:availability_zone]     = "us-west-1a"
knife[:region]                = "us-west-1"
knife[:image]                 = "ami-1d2c0858" #riq-ami-2012-08-17
# knife[:image]                 = "ami-e381a4a6" #riq-ami-2012-08-01-142604-x86_64
knife[:flavor]                = "m1.small"
knife[:subnet_id]             = "subnet-3b2aa452"
knife[:security_group_ids]    = ["sg-c88598a4"]
