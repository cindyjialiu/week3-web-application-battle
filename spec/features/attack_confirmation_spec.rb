feature 'Attacking confirmation' do
  scenario 'Can see confiratio when attack player2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Shaun attacked Flossie'
  end
end
