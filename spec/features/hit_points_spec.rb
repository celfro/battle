feature 'See player 2 hit points' do
  scenario 'see points' do
    sign_in_and_play
    expect(page).to have_content("Celia Hit Points: 50")
  end
end
