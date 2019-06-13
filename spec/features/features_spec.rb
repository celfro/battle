
feature 'Entering Player Names' do
  scenario 'player can enter their names and they appear on the screen' do
    visit '/'
    fill_in('Player 1', with: 'Alexis')
    fill_in('Player 2', with: 'Celia')
    click_button('Submit')
    expect(page).to have_content('Alexis')
    expect(page).to have_content('Celia')
  end
end