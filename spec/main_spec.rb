require 'spec_helper'
require './main.rb'

RSpec.describe Object, 'hourglass problem' do
  it 'should calculate correct' do
    array = Array.new(6)
    result = nil

    1.upto(3) do |i|
      File.open("spec/cases/test_case_#{i}.txt", 'r').each_with_index do |l, index|
        if index == 0
          result = l.strip.to_i
        else
          array[index-1] = l.split(' ').map { |elem| elem.strip.to_i }
        end
      end
      expect(hourglassSum(array)).to eq(result)
    end
  end
end
