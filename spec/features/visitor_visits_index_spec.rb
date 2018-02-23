require 'rails_helper'

describe "when I visit the index and click on a trip show page" do
  it "I see a list of trails included in the trip" do
    trip_1 = Trip.create!(name: "obt trail", start_date: "1/1/2018", end_date: "1/3/2018")
    trip_2 = Trip.create!(name: "john trail", start_date: "2/2/2018", end_date: "2/6/2018")

    trail_1 = Trail.create!(name: "red trail", length: "10m", address: "111", trip: trip_1)
    trail_2 = Trail.create!(name: "blue trail", length: "20m", address: "1122", trip: trip_1)
    trail_3 = Trail.create!(name: "green trail", length: "20m", address: "222", trip: trip_2)
    trail_4 = Trail.create!(name: "pink trail", length: "30m", address: "22211", trip: trip_2)

     trip_1.trails << trail_1
     trip_1.trails << trail_2
     trip_2.trails << trail_3
     trip_2.trails << trail_4 

    visit trips_path

    click_on "obt trail"
save_and_open_page

    expect(page).to have_content("")
  
  end
end

