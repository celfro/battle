feature 'Battle' do
  scenario 'checks the homepage says Testing infrastructure working' do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end