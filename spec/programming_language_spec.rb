class ProgrammingLanguage
  attr_reader :name
  
  def initialize(name = "Ruby")
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new("Python") }  

  it "shold be return programming language name" do
    expect(language.name).to eq("Python")
  end
  
  context "with no name argument" do
    let(:language) { ProgrammingLanguage.new }

    it "should be return default Ruby name" do
      expect(language.name).to eq("Ruby")
    end
  end
end
