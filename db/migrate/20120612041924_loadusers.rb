class Loadusers < ActiveRecord::Migration
  def up
    one = User.new()
    one.first_name = "Alice"
    one.last_name = "Adachi"
    one.sex = "Female"
    one.marital_status = "Single"
    one.race = "Japanese"
    one.degree = "High School Degree"
    one.occupation = "Secretary"
    one.birth_year = 1922
    one.languages = "Japanese (Speak only), English"
    one.birth_place = "Mountain States, Utah"
    one.mother_birth_place = "Japan"
    one.father_birth_place = "Japan"
    one.login = "alice"
    one.password = "profile1"
    one.photo_path = "alice.jpg"
    one.save
    
    two = User.new()
    two.first_name = "Robert"
    two.last_name = "Izumi"
    two.sex = "Male"
    two.marital_status = "Single"
    two.race = "Japanese"
    two.degree = "High School"
    two.occupation = "Sales Clerk"
    two.birth_year = "1921"
    two.languages = "Japanese (Speak Only), English"
    two.birth_place = "Pacific States, Calirofnia"
    two.mother_birth_place = "Japan"
    two.father_birth_place = "Japan"
    two.login = "robert"
    two.password = "profile2"
    two.photo_path = "robert.jpg"
    two.save
    
    three = User.new()
    three.first_name = "Paul"
    three.last_name = "Adachi"
    three.sex = "Male"
    three.marital_status = "Single"
    three.race = "Japanese"
    three.degree = "High School"
    three.occupation = "Clerk at financial institution"
    three.birth_year = "1920"
    three.languages = "Japanese (Speak Only), English"
    three.birth_place = "Mountain States, Colorado"
    three.mother_birth_place = "Japan"
    three.login = "paul"
    three.password = "profile3"
    three.photo_path = "paul.jpg"
    three.save
    
    four = User.new()
    four.first_name = "Shoji"
    four.last_name = "Maruyama"
    four.sex = "Male"
    four.marital_status = "Single"
    four.race = "Japanese"
    four.degree = "High School"
    four.occupation =  "Pattern and Model Maker"
    four.birth_year = "1927"
    four.languages = "Japanese and English"
    four.birth_place = "Pacific States, California"
    four.mother_birth_place = "Japan"
    four.father_birth_place = "Japan"
    four.login = "shoji"
    four.password = "profile4"
    four.photo_path = "shoji.jpg"
    four.save
  end

  def down
    User.destroy_all
  end
end
