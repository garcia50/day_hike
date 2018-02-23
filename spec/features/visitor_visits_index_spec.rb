require 'rails_helper'

describe "when I visit the index and click on a trip show page" do
  it "I see a list of trails included in the trip" do
    trip_1 = Trip.create!(name: "obt trail", start_date: "1/1/2018", end_date: "1/3/2018")
    trip_2 = Trip.create!(name: "john trail", start_date: "2/2/2018", end_date: "2/6/2018")

    visit trips_path
    click on "obt trail"

save_and_open_page
    expect(page).to have_content("")
  
  end
end

