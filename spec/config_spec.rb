require 'rack2aws/config'

include Rack2Aws::Configuration

describe RackspaceConfig do

  describe "#load" do
    before {
      RackspaceConfig.instance_variable_set(:@config_path, "#{Dir.getwd}/spec/config")
    }

    it "returns Rackspace configuration hash" do
      expect(RackspaceConfig.load()).to eql({
                                              :provider => 'Rackspace',
                                              :rackspace_api_key => 'your_api_key',
                                              :rackspace_username => 'your_username',
                                              :rackspace_region => 'ORD'
                                            })
    end
  end

end

describe AWSConfig do

  describe "#load" do
    before {
      AWSConfig.instance_variable_set(:@config_path, "#{Dir.getwd}/spec/credentials")
    }

    it "returns AWS configuration hash" do
      expect(AWSConfig.load()).to eql({
                                        :provider => 'AWS',
                                        :region => 'eu-west-1',
                                        :aws_access_key_id => 'dummy_access_key_id',
                                        :aws_secret_access_key => 'dummy_secret_access_key'
                                      })
    end
  end

end
