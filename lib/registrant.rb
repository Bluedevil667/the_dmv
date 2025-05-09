class Registrant
  attr_reader :name,
              :age,
              :permit,
              :license_data
  
  def initialize(name, age, permit = false)
    @name = name
    @age = age 
    @permit = permit
    @license_data = {written: false, license: false, renewed: false}
  end

  def permit?
    @permit
  end

  def license?
    @license_data[:license]
  end

  def written_test?
    @license_data[:written]
  end

  def earn_permit
    return @permit = true if @age >= 15
  end
end