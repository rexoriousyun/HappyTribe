CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => Figaro.env.S3_KEY,
      :aws_secret_access_key  => Figaro.env.S3_SECRET,
      :path_style            => true,
      :region                 => 'us-west-2' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = Figaro.env.S3_BUCKET
end