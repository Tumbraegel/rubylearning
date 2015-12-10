    

describe "Exceptions" do

    it "can be raised and catched" do 
    	begin
    		raise Exception, "hallo"
            @reached = :a
    	rescue Exception => e
    		@reached = :b
            @message = e.message
    	end
        expect(@reached).to eq(:b)
        expect(@message).to eq("hallo")
    end
   
	it "can easily be defined" do
		class MyException < StandardError ; end
		begin 
			raise MyException, "my_message"
		rescue Exception => e
			expect(e.class).to eq(MyException)
			expect(e.message).to eq("my_message")
		end
	end
end
# Ruby has an Exception Hierarchy just as Java does, see below.
# Doc for Exception: http://www.ruby-doc.org/core-2.1.3/Exception.html

# The Ruby Exception Hierarchy (Source: The Pickaxe Book)
# Exception
#            NoMemoryError
#            ScriptError
#                LoadError
#                    Gem::LoadError
#                NotImplementedError
#                SyntaxError
#            SecurityError
#            SignalException
#                Interrupt
#            StandardError
#                ArgumentError
#                    Gem::Requirement::BadRequirementError
#                EncodingError
#                    Encoding::CompatibilityError
#                    Encoding::ConverterNotFoundError
#                    Encoding::InvalidByteSequenceError
#                    Encoding::UndefinedConversionError
#                FiberError
#                IndexError
# KeyError
#                    StopIteration
#                IOError
#                    EOFError
#                LocalJumpError
#                Math::DomainError
#                NameError
#                    NoMethodError
#                RangeError
#                    FloatDomainError
#                RegexpError
#                RuntimeError
#                    Gem::Exception
#                SystemCallError
#                ThreadError
#                TypeError
#                ZeroDivisionError
#            SystemExit
#                Gem::SystemExitException
#            SystemStackError# 