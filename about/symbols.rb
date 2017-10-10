
#WS2014 find a description about what symbols are.

	describe "Symbols" do

		let(:rubSym1   ) {:ruby}
	  let(:rubSym2   ) {:ruby}
	  let(:rubString1) {"ruby"}
	  let(:rubString2) {"ruby"}

		it "tests if the object ids of to same symbols are equal" do
		expect(rubSym1.object_id).to eq(rubSym2.object_id)
		end

		it "tests if the object ids of to strings with same value are not equal" do
		expect(rubString1.object_id).to_not eq(rubString2.object_id)
		end

		it "tests if the string to symbol method gives out the symbol" do
		expect(rubString1.to_sym).to eq(rubSym1)
		end

		it "tests if the string to symbol and compared symbol have the same object_id" do
		expect(rubString1.to_sym.object_id).to eq(rubSym1.object_id)
		end

		it "tests if the symbol to string method gives out the symbol" do
		expect(rubSym1.to_s).to eq(rubString1)
		end
	end
