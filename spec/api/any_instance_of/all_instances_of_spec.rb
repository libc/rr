require File.expand_path("#{File.dirname(__FILE__)}/../../spec_helper")

describe "all_instances_of" do
  it "applies to instances instantiated before the Double expection was created" do
    pending("Completion of all_instances_of") do
      subject_class = Class.new
      subject = subject_class.new
      all_instances_of(subject_class) do |o|
        o.to_s {"Subject is stubbed"}
      end
      subject.to_s.should == "Subject is stubbed"
    end
  end
end
