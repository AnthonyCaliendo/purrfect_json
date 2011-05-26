require 'spec_helper'

describe PurrfectJson::AsciiMaskConverter do

  class PieConvertingObject
    extend PurrfectJson::AsciiMaskConverter

    PIE = 
%{          _,..---..,_
        ,-"`    .'.    `"-,
       ((      '.'.'      ))
        `'-.,_   '   _,.-'`
    jgs   `\  `"""""`  /`
            `""-----""`}

    converts :s, :pie do
      PIE
    end

  end

  before do
    @pie = PieConvertingObject.new
  end

  it 'formats ascii art as itself' do
    @pie.stub! :to_s => PieConvertingObject::PIE
    @pie.to_pie.should == PieConvertingObject::PIE
  end

  it 'formats string input as pie' do
    @pie.stub! :to_s => 'AAAA AAAA AAAA AAAA AAAA AAAA'
    @pie.to_pie.should == "          AAAAAAAAAAA\n        AAAA    AAA    AAAA\n       AA"
  end

end