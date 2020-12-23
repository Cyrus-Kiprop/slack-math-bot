
require 'spec_helper'

RSpec.describe 'Calculator::sum' do 
   
    let(:invalid_math_expression) { "Hello there!!"}

    let(:error_response) {
    "Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3"}


    describe '#evaluate' do
    it "should return a the mathematical expression plus the result in the following format" do
            expect(Calculator::Sum.new('2 + 2').evaluate).to eq("2 + 2 = 4")
    end
    it "should return an error string in the case of an invalid mathematical expression" do 
        expect(Calculator::Sum.new(:invalid_math_expression).evaluate.class).to eq(String)
    end
end

end