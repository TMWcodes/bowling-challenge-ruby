require 'score_card'

describe 'Scorecard' do

  it 'can record the score' do
    score_card = Scorecard.new
    expect(score_card.add_score(2,2)).to eq([[2,2]])
  end


  it 'can check pin score' do 
    score_card = Scorecard.new
    score_card.add_score(2,2)
    score_card.add_score(2,2)
    score_card.check_pin_score
    expect(score_card.check_pin_score).to eql([[2,2],[2,2]])
    # expect(actual).to eq(expected)
  end

  it 'displays scores of each frame' do
    score_card = Scorecard.new
    score_card.add_score(2,2)
    score_card.add_score(2,2)
    expect(score_card.check_frame_score).to eq([4,4])
  end

  it 'checks total score of all frames' do
    score_card = Scorecard.new
    score_card.add_score(2,2)
    score_card.add_score(2,2)
    score_card.add_score(2,2)
    score_card.add_score(2,2)
    expect(score_card.check_total_score).to eql(16)
  end


end