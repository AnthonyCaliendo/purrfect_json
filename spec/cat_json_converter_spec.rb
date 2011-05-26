require 'spec_helper'

describe PurrfectJson::CatJsonConverter do
  class CatConvertingObject
    extend PurrfectJson::CatJsonConverter
  end

  before do
    @cat = CatConvertingObject.new
    @cat.stub! :to_json => %{
      {"book": {"title": "foo title", "pages": 500, "author": "bob dole"}}
    }

    # Since we randomly choose a cat, force the first cat so the test is deterministic.
    PurrfectJson::CatJsonConverter.stub! :rand => 0
  end

  it 'formats json as cats' do
    @cat.to_cats.should == "\n                                                   {\"bo\n                                                   ok\":{\n                                                     \"tit\n                                                      le\":\n                                                      \"foot\n                                                      itle\",\n                                                      \"pages\n                                                      \":500,\n      \"aut  hor                                       \":\"bob\n     dole\"}}"
  end

end