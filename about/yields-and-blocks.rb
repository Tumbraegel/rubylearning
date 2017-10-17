describe "Blocks passed to methods" do

  it "blocks can be passed to methods" do
    def my_four_times_loop(&block)
      block.call
      block.call
      block.call
      block.call
    end
    a = 0
    my_four_times_loop { a = a + 1 }
    expect(a).to eq 4
  end

  it "variable binding" do
    outside_x = ""
    def a_method(&block)
      block.call
    end
    a_method { outside_x = "foo" }
    expect(outside_x).to eq "foo"
  end

  it "yield calls the block passed to the method" do
    def two_times
      yield
      yield
    end
    a = 0
    two_times { a = a + 1}
    expect(a).to eq 2
  end

  it "yield can also pass arguments to the block" do
    a = Array.new
    def test
      yield 50
      yield 100
    end
    test {|i| a.push "#{i}"}
    expect(a[0]).to eq "50"
    expect(a[1]).to eq "100"
  end

end
