require 'faker'

class GenerateFormData
  include Faker


  def random_first_name
    @first_name = Faker::Name.first_name
  end

  def random_last_name
    @last_name = Faker::Name.last_name
  end

  def random_martial_status
    @martial_status_pick = Faker::Number.between(0, 2)
  end

  def random_hobby
    @hobby_pick = Faker::Number.between(0, 2)
  end

  def random_day_value
    @day_value_pick = Faker::Number.between(0, 28)
  end

  def random_month_value
    @month_value_pick = Faker::Number.between(1, 12)
  end

  def random_year_value
    @year_value_pick = Faker::Number.between(1950, 2014)
  end

  def random_phone_number
    @phone_number = Faker::Number.leading_zero_number(11)
  end

  def random_username
    @username = Faker::LeagueOfLegends.champion
  end

  def random_email
    @email = Faker::Internet.email
  end

  def random_about_me_data
    job_title = Faker::Job.title
    field = Faker::Job.field
    height = Faker::Demographic.height(:imperial)
    race = Faker::Demographic.race
    @about_me = "I am #{race} \n I'm #{height} \n My job title is #{job_title} in the field of #{field}"
  end

  def create_random_password
    password_array = [Faker::Esport.team, Faker::HarryPotter.location, Faker::Name.last_name,Faker::Number.number(4)]
    @final_password = "#{password_array[0]}#{password_array[1]}#{password_array[2]}".gsub(' ','')
  end


  def random_country_pick
    countries = ["Afghanistan","Albania","Algeria","American Samoa","Andorra","Angola","Antigua and Barbuda","Argentina","Armenia","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Canada","Cape Verde","Central African Republic","Chad","Chile","China","Colombia","Comoros","Congo","Costa Rica","Côte d'Ivoire","Croatia","Cuba","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","East Timor","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Fiji","Finland","France","Gabon","Gambia","Georgia","Germany","Ghana","Greece","Greenland","Grenada","Guam","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Japan","Jordan","Kazakhstan","Kenya","Kiribati","North Korea","South Korea","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Morocco","Mozambique","Myanmar","Namibia","Nauru","Nepal","Netherlands","New Zealand","Nicaragua","Niger","Nigeria","Norway","Northern Mariana Islands","Oman","Pakistan","Palau","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Romania","Russia","Rwanda","Saint Kitts and Nevis","Saint Lucia", "Saint Vincent and the Grenadines","Samoa","San Marino", "Sao Tome and Principe","Saudi Arabia","Senegal","Serbia and Montenegro","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","Spain","Sri Lanka","Sudan","Sudan, South","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Togo","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States","Uruguay","Uzbekistan","Vanuatu","Vatican City","Venezuela","Vietnam","Virgin Islands, British","Virgin Islands, U.S.","Yemen","Zambia","Zimbabwe"]

    @country_pick = countries[Faker::Number.between(0, countries.length)]
  end
end
