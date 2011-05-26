require 'spec_helper'

describe PurrfectJson do
  class CatConvertingObject
    include PurrfectJson
  end

  it 'defines conversion method merely from including module' do
    CatConvertingObject.new.should respond_to(:to_cats)
  end
end