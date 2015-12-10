describe "ruby api favs from the quiz: " do
	
	it "to_sentence" do
		# to_sentence is a part of rail's active_support
		# see http://guides.rubyonrails.org/active_support_core_extensions.html
		require 'active_support/core_ext/array/conversions.rb'
		expect([:a,:b,:c].to_sentence).to eq("a, b, and c")
	end
	it "times loop" do
		s = ""
		4.times do 
			s += "x"
		end
		expect(s).to eq("xxxx")
	end

	it "strip" do
		expect(" hallo ".strip).to eq("hallo")		
	end

	it "respond_to?" do
		expect("I'm a string".respond_to?("split")).to be(true)
		expect("I'm a string".respond_to?("this_is_not_a_method_name")).to be(false)
	end

	it "send" do
		method_name = "reverse"
		expect("I'm a string".send(method_name)).to eq("gnirts a m'I")
	end


end