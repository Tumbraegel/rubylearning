
describe "Test" do

  it "objects can be asked if they respond to methods" do
    class Test
      def sayhello
  		  "hello"
      end
    end
  	test = Test.new
  	expect(test.respond_to?("sayhello")).to eq true
  end

  it "method names can be constructed and then send to the object" do
  	test = Test.new
  	expect(test.send("say"+"hello")). to eq "hello"
  end

  it "object includes method" do
  	test = Test.new
  	expect(test.methods.include?(:sayhello)). to eq true
  end
end
