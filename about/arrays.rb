
describe 'Ruby Arrays' do

	it 'initialisierung' do
		a = [1, 2, 3]
		expect(a[1]).to eq(2)
	end


	it "new creates an Array with nils of given length" do
		a = Array.new(3)
		expect(a.length).to eq(3)
		expect(a).to eq [nil,nil,nil]
	end


	it 'fill' do
		booleanArray = Array.new(3, true)
		expect(booleanArray[2]).to eq(true)
		expect(booleanArray).to eq [true, true, true]
	end


	it 'arithmetik' do
		namen = ["Jonas", "Paul", "Felix"]
		namen += ["Kaj"]
		namen -= ["Felix"]
		namen *= 2

		expect(namen.length).to eq(6)
		expect(namen[2]).to eq("Kaj")
		expect(namen[4]).to eq("Paul")
		# äh - wie sieht das array namen jetzt aus??
		expect(namen).to eq ["Jonas","Paul","Kaj","Jonas","Paul","Kaj"]
	end

	let(:arrayX) {[0,1,2,3]}

	it "add new element" do
		arrayX[4] = 4;
		expect(arrayX[4]).to eq(4)
	end

	it "deletes element" do
		arrayX.delete(2);
		expect(arrayX[3]).to eq(nil)
		expect(arrayX[2]).to eq(3)
	end
end
