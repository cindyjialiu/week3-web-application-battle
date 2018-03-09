def sign_in_and_play
  visit('/')
  fill_in :player_name1, with: "Shaun"
  fill_in :player_name2, with: "Flossie"
  click_button "Submit"
end
