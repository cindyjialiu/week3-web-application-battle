def sign_in_and_play
  visit('/')
  fill_in :name1, with: "Shaun"
  fill_in :name2, with: "Flossie"
  click_button "Submit"
end
