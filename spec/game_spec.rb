require 'game'

describe Game do
  
  before(:each) do
    @game = Game.new
  end
  
  it "should score all gutter balls as 0" do
    @game.score("--------------------").should == 0
    
  end
  
  it "should score single rolls in each frame" do
    @game.score("9-"*10).should == 90
  end
  
  it "should score a spare" do
    pending
    @game.score("5/" + "--"*9).should == 10 
  end
  
   
end

describe Parse do
  include Parse
  
  it "should parse score line into frames" do
    parse("--").should have(1).item
    parse("----").should have(2).items
    
  end
end