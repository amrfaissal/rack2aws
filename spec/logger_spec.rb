require 'rack2aws/logger'

describe Rack2Aws::Logger do

  include Rack2Aws::Logger

  describe ".show_welcome" do
    it "outputs the welcome message to STDOUT" do
      expect { show_welcome }.to output.to_stdout
    end
  end

  describe ".warn" do
    context "given a message 'files are uploaded publicly'" do
      it "returns brown(bold(WARNING:)) files are uploaded publicly" do
        expect( warn("files are uploaded publicly") ).to eql("\e[33m\e[1mWARNING: \e[22mfiles are uploaded publicly\e[0m")
      end
    end
  end

end

