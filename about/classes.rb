
# this is an example for writing a test cheat sheet for Ruby Classes.

describe "A Ruby Class" do


  it "can have a shorthand for defining getters/setters" do
    class Boat
      attr_accessor :name, :length
    end
      boat = Boat.new
      boat.name = "Pinguin"
      expect(boat.name).to eq "Pinguin"
  end

  it "initialize is called when new instance is crated" do
    class Boat
      attr_accessor :name, :length
      def initialize(name,length)
        @name, @length = name, length
      end
    end

    boat = Boat.new("Hib",4)
    expect(boat.name).to eq "Hib"
    expect(boat.length).to eq 4
  end

  it "reflects on its Class" do
    class X
    end
    class U
    end
    x = X.new
    expect(x.class).to eq X
    expect(x.class).not_to eq U
  end
end
