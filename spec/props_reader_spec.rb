require 'rack2aws/props_reader'

describe PropertiesReader do

  subject { PropertiesReader.new(File.expand_path('spec/config')) }

  describe '#to_s' do
    it 'returns string representation of the configuration file' do
      expect( subject.to_s ).to eql("File Name #{File.expand_path('spec/config')} \nregion=  ORD \nusername=  your_username \napi-key=  your_api_key \n")
    end
  end

  describe '#get' do
    context "given key 'region'" do
      it 'returns region value in the configuration file' do
        expect( subject.get("region") ).to eql("ORD")
      end
    end

    context "given key 'username'" do
      it 'returns username value in the configuration file' do
        expect( subject.get("username") ).to eql("your_username")
      end
    end

    context "given key 'api-key'" do
      it 'returns api-key value in the configuration file' do
        expect( subject.get("api-key") ).to eql("your_api_key")
      end
    end
  end

end
