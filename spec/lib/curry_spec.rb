require 'spec_helper'

describe "Proc#curry" do
  context "for a regular proc" do
    subject { Proc.new {|a, b, c| a + b + c}}

    it "should return proc" do
      subject.curry(1).should be_a(Proc)
    end

    it "should curry" do
      subject.curry(1).call(2, 3).should == 6
    end

    it "should curry with varargs" do
      subject.curry(1, 2).call(3).should == 6
    end

    it "should curry with no args" do
      subject.curry.call(1, 2, 3).should == 6
    end
  end

  context "for a proc with varargs" do
    subject { Proc.new {|*args| args.inject(0) {|acc, i| acc + i}}}

    it "should curry" do
      subject.curry(1, 2).call(3, 4).should == 10
    end
  end

  context "for a proc with both args and varargs" do
    subject { Proc.new {|a, b, *args| a + b + args.inject(0) {|acc, i| acc + i}}}

    it "should curry" do
      subject.curry(1, 2, 3, 4).call(5, 6).should == 21
    end
  end
end
