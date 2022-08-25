class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe "have_attributes matcher" do
  describe ProfessionalWrestler.new("John", "Stunner") do
    it "checks for object attribute and proper values" do
      expect(subject).to have_attributes(name: "John")
      expect(subject).to have_attributes(name: "John", finishing_move: "Stunner")
    end

    it { is_expected.to have_attributes(name: "John") }
    it { is_expected.to have_attributes(name: "John", finishing_move: "Stunner") }
  end
end