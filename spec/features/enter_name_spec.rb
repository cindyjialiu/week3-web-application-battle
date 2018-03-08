feature 'Entering names' do
  # scenario 'Can run app and check page content' do
  #   visit('/')
  #   expect(page).to have_content 'Testing infrastructure is working!'
  # end

  scenario 'Entering user names and print on-screen' do
    visit('/')
    fill_in :name1, with: "name1"
    fill_in :name2, with: "name2"
    click_button "Submit"
    expect(page).to have_content 'name1 vs. name2'
  end

  scenario 'Can see my progress bar and hit points of player2' do
    visit('/')
    fill_in :name1, with: "Shaun"
    fill_in :name2, with: "Flossie"
    click_button "Submit"
    expect(page).to have_content 'Flossie: 60HP'
  end

end
