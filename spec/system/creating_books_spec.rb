require 'rails_helper'

RSpec.describe "CreatingBooks", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'shows books from the seed database' do
    visit '/'
    expect(page).to have_content('The life of a turtle')
    expect(page).to have_content('The mirror, the lion and the audacity of the little dog')
    expect(page).to have_content('Origami for cats')
    expect(page).to have_content('The weight of a hundred kilograms')
    expect(page).to have_content('A Thousand Splendid Suns')
    end
end