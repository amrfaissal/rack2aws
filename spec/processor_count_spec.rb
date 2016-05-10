require 'rack2aws/processor_count'

describe Rack2Aws::ProcessorCount do

  include Rack2Aws::ProcessorCount

  describe ".processor_count" do
    before { Rack2Aws::ProcessorCount.instance_variable_set(:@processor_count, nil) }

    it "returns a number" do
      expect(1..999).to include(processor_count)
    end

    if RUBY_PLATFORM =~ /darwin10/
      it 'works if hwprefs in not available' do
        Rack2Aws::ProcessorCount.should_receive(:hwprefs_available?).and_return false
        expect(1..999).to include(processor_count)
      end
    end
  end

  describe ".physical_processor_count" do
    before { Rack2Aws::ProcessorCount.instance_variable_set(:@physical_processor_count, nil) }

    it "returns a number" do
      expect(1..999).to include(physical_processor_count)
    end

    it "is even factor of logical cpus" do
      expect(processor_count % physical_processor_count).to eql(0)
    end
  end

end
