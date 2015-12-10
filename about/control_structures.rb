#consolidate this with eachTo.rb and loops.rb and find better file names
#http://www.ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/syntax.html#control

describe "Ruby's control structures" do
  it "has an if statement" do

    a = 2
    b = 0

    if a == 2
      b = true
    else
      b = false
    end

    expect(b).to eq(true)
  end

  it "has unless(if not) branches" 
end
