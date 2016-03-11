class PropertiesReader
  def initialize(file)
    @file = file
    @properties = {}
    IO.foreach(file) do |line|
      @properties[$1.strip] = $2 if line =~ /([^=]*)=(.*)\/\/(.*)/ || line =~ /([^=]*)=(.*)/
    end
  end

  def to_s
    output = "File Name #{@file} \n"
    @properties.each {|key,value| output += "#{key}= #{value} \n"}
    output
  end

  def get(key)
    @properties[key].strip
  end
end
