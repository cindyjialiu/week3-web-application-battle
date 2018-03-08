feature 'Checking hit points' do
  scenario 'Can see my progress bar and hit points of player2' do
    sign_in_and_play
    expect(page).to have_content 'Flossie: 60HP'
  end
end
