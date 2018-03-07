feature 'Entering names' do
  # scenario 'Can run app and check page content' do
  #   visit('/')
  #   expect(page).to have_content 'Testing infrastructure is working!'
  # end

  scenario 'Can fill in user names and print on-screen' do
    visit('/')
    fill_in :name1, with: "name1"
    fill_in :name2, with: "name2"
    click_button "Submit"
    expect(page).to have_content 'name1 vs. name2'
  end

end
