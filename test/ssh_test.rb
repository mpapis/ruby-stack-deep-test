=begin
Copyright 2014 Michal Papis <mpapis@gmail.com>

See the file LICENSE for copying permission.
=end

require 'test_helper'

describe Object do

  subject do
    Object.new.tap do |ssh|
      subject.instance_variable_set(:@ssh, connection)
    end
  end

  describe "#initialize" do

    it "sets default variables" do
      subject.send(:initialize, 1, 2, 3)
      subject.hostname.must_equal 1
    end

  end #initialize

end
