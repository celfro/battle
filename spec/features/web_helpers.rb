def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Alexis'
  fill_in :player_2_name, with: 'Celia'
  click_button 'Submit'
end