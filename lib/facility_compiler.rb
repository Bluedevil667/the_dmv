class FacilityCompiler

  def initialize
    @office_locations = []
  end

  def create_facilities(facilities)
    facilities.each do |facility|
      facility_information = {
        name: facility[:title],
        address: facility[:location_1],
        phone: facility[:phone_number],
        services: [],
        registered_vehicles: [],
        collected_fees: 0
      }
      @office_locations << facility = Facility.new(facility_information)
    end
    @office_locations
  end
end