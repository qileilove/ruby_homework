require 'minitest/spec'
require 'minitest/autorun'
require './auto_wrap.rb'
describe AutoWrap do
  before do
    @autowrap = AutoWrap.new
  end

  describe "AutoWrap" do
    it "should return '' when given '' and 0" do
      result = @autowrap.wrap '',0
      assert_equal '', result
    end
  end


    it 'should return '' when given '' and 1' do
      result = @autowrap.wrap '',1
      assert_equal '', result
    end

    it "should return 'c \nd' when given  'this is a test' and 4" do
      result = @autowrap.wrap 'this is a test','4'
      assert_equal "\nthis\nis a\ntest", result
    end

  it "should return 'a \nb' when given 'a b' and 1" do
    result = @autowrap.wrap 'a b','1'
    assert_equal "\na\nb", result
    end

  it "should return 'a b' when given 'a b' and 2" do
    result = @autowrap.wrap 'a b','2'
    assert_equal "a\nb", result
  end
end
