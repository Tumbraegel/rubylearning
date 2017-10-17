
describe "Hashes" do

	it "test the value on a key" do

		firstHash = {"2hoch2" => 4, "2hoch3" => 8, "2hoch4" => 16, "2hoch5" => 32}

		expect(firstHash["2hoch2"]).to eq 4
		expect(firstHash["2hoch3"]).to eq 8
		expect(firstHash["2hoch4"]).to eq 16
		expect(firstHash["2hoch5"]).to eq 32
	end

	it "should add new value to hash" do

		secondHash = {}
		expect(secondHash.length).to eq 0

		secondHash["hallo"] = 89438743284
		expect(secondHash.length).to eq 1

		secondHash["harry"] = 92147938
		expect(secondHash.length).to eq 2
	end

	it "should delete certain value" do

		thirdHash = {"a" => 100, "b" => 200, "c" => 300, "d" => 400, "e" => 500}
		expect(thirdHash.length).to eq 5

		thirdHash.delete("c")
		expect(thirdHash.length).to eq 4
		expect(thirdHash.has_key?("c")).to eq false

		thirdHash.delete("b")
		expect(thirdHash.length).to eq 3
		expect(thirdHash.has_key?("b")).to eq false
	end

	it "should treat same named keys as one value" do

		thirdHash = {"a" => 100, "a" => 200, "a" => 300}
		expect(thirdHash.length).to eq 1
		expect(thirdHash["a"]).to eq 300
	end


end
