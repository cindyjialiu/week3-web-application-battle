feature 'Entering names' do
  # scenario 'Can run app and check page content' do
  #   visit('/')
  #   expect(page).to have_content 'Testing infrastructure is working!'
  # end

  scenario 'Entering user names and print on-screen' do
    sign_in_and_play
    expect(page).to have_content 'Shaun vs. Flossie'
  end

end
