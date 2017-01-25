require 'rack2aws/config'

include Rack2Aws::Configuration

describe KVConfigParser do
  let (:credentials) { KVConfigParser.new("#{Dir.getwd}/spec/credentials") }
  it 'parses a key-value configuration file' do
    expect(credentials.get_params).to eq(["default", "others"])
    expect(credentials.get_groups).to eq(["default", "others"])
    expect(credentials['default']).to eq({"region"=>"eu-west-1","aws_access_key_id"=>"dummy_access_key_id", "aws_secret_access_key"=>"dummy_secret_access_key"})
  end
end

describe RackspaceConfig do
  describe '.load' do
    context 'given a non-existant configuration file' do
      before {
        RackspaceConfig.instance_variable_set(:@config_path, '/path/to/non-existant-file')
      }

      it 'raises a FileNotFoundError exception' do
        expect { RackspaceConfig.load }.to raise_error(FileNotFoundError)
      end
    end

    context 'given a valid configuration file' do
      before {
        RackspaceConfig.instance_variable_set(:@config_path, "#{Dir.getwd}/spec/config")
      }

      it 'returns Rackspace configuration hash' do
        expected_result = {
          :provider => 'Rackspace',
          :rackspace_api_key => 'your_api_key',
          :rackspace_username => 'your_username',
          :rackspace_region => 'ORD'
        }
        expect(RackspaceConfig.load()).to eql(expected_result)
      end
    end
  end
end

describe AWSConfig do
  describe '.load' do
    context 'given a non-existant configuration file' do
      before {
        AWSConfig.instance_variable_set(:@config_path, '/path/to/non-existant-file')
      }

      it 'raises a FileNotFoundError exception' do
        expect { AWSConfig.load }.to raise_error(FileNotFoundError)
      end
    end

    context 'given a valid configuration file' do
      before {
        AWSConfig.instance_variable_set(:@config_path, File.expand_path('spec/credentials'))
      }

      it 'returns AWS configuration hash' do
        expected_result = {
          :provider => 'AWS',
          :region => 'eu-west-1',
          :aws_access_key_id => 'dummy_access_key_id',
          :aws_secret_access_key => 'dummy_secret_access_key'
        }
        expect(AWSConfig.load).to eql(expected_result)
      end
    end
  end
end
