require './bin/ui.rb'

RSpec.describe UI do
  describe "#new_game?" do
    it "Return true if the value  is one " do
     ui = UI.new
     expect(ui.new_game?).to eql(false)
    end
  end
end
