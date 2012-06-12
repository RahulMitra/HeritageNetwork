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
    one.before_internment = "I was born in Storrs, Utah to Shino and Sakui Adachi on April 5th, 1922. When the Japanese-American scare rolled around and the mass evacuation and internment of people in the West Coast occurred, I was 19 years old and working as a secretary to the principal of Gardena Elementary School."
    one.during_internment = "I joined my family in Manzanar and worked there with the Board of Education. I rather not share personal feelings of this time, which were very similar to most people I have talked to - disillusionment, humiliation, and the like. I was most worried for my parents, and scared that my family would not be able to stay intact due to the conditions. I was determined to negotiate the earliest possible release."
    one.after_internment = "After being released from Manzanar, I moved to Chicago to be the executive secretary to the Dean of the Chicago Theological Seminary. In 1944, I was able to locate my two sisters and put them through high school and college. I worked to speak to church groups in my free time to gain support for putting other former internees in school.  At the end of the war, I called my brother Paul back from Camp Shelby where he had been training and worked to get our parents out of the unkempt trailer park where they had been sent. Last, my brother and I together worked to get our younger brother into a good neighborhood where he could go to junior high school. My final career was a manager of a travel agency. I was finally able to visit many far off places - a large contrast to the years I had spent imprisoned behind barbed wire."
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
    two.before_internment = "I was born into a family of 9 to 8 sons and 1 daughter. I was the middle child, number 5, born in Hollywood in 1921. My father was my mom's second husband, and I had one step brother and one step sister from her first marriage. My parents worked together as florists.  I graduated from high school in 1939 and worked in the flower shop. At age 20, Pearl Harbor was bombed and war broke out. I went to volunteer for the Army but was turned away."
    two.during_internment = "The first job I had at the camp involved doing carpentry work and polishing up the barracks wherever there was a loose end. I jumped on an opportunity to work on a farm and went to Montana to top beets. We travelled between the farm and the camp depending on harvesting times. I made the trip about 3 times. My next job was working in the camp mess hall, which involved incredibly early 3:00 am mornings. Personally, I loved driving the caterpillar and plowing fields. As a past time, we played pinochle, basketball and softball."
    two.after_internment = "I didn't feel badly towards the draft, I just went. I had five brothers in the Army during the war, but none at Fort Douglas with me. After the war, I bought a bakery and got started. Eventually, this business became one of the largest retail and multiple unit bakeries in California. You can really accomplish anything you put your mind to."
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
    three.father_birth_place = "Japan"
    three.before_internment = "I was born in Delta, Colorado on July 4th, 1920 to Sakhi and Shino Adachi. My parents were from Aizu-Wakamatsu in Fukushima-Ken in Japan. I went to elementary school in Colorado, Utah, and Arizona, and went to high school in Los Angeles. Before World War II, I went to the American Institute of Banking in LA and the UC Extension School in Real Estate so I could be a banker.  Upon the start of internment, we were only given a few weeks to sell our possessions, making these items almost giveaways. My family was able to keep many valuables in a safe deposit box at the bank where I worked. Other things, like a recently purchased car, I refused to sell and just locked it up and threw away the key." 
    three.during_internment = "We were put into block 5-10-5 in Manzanar. I was given the job of Property Manager and made $19 a month. This was to support my parents, 3 sisters, and brother who all shared this one room. We just looked for ways to pass the time, so school was good for my siblings. The shower, bath rooms, and mess hall did take some time to get used to, though. I took part in sports and even some dances to pass time.  I immediately volunteered to help at a farm, because these people would be considered first to leave the camp. The feeling of being outside without barbwire was definitely nice."
    three.after_internment = "After working with the labor group, I went to the University of Nebraska but was not let in due to their quota on Japanese Americans. As they had already admitted me, however, they helped me get into Drake University in Iowa. Before my second semester, I needed to earn money. Hearing about the formation of an all Japanese American Army Unit, I volunteered and went to Camp Shelby to train."
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
    four.before_internment = "My parents came from the same part of Japan, though my father migrated to the US in 1898 and my mother came over in 1923. My father worked in the railroad industry, operated many stores, and processed Indigo in Mexico. I remember Dec. 7 and the broadcast of war vividly. I was terribly scared.  The ride to Manzanar was equally frightening. The people resembled demons to mean, the complete opposite of those of the carefree Southern California I had just left. My family had been split up, the FBI had detained my father so my 17 year old brother was now in charge."
    four.during_internment = "I was stuck with my mom and brother in a 20-foot square room along with another family of five. I don't need to describe how cramped it was.  I went to high school in Manzanar and graduated in 1944.  Many of the boys hung out together, without parents around. We went to many mess halls during lunch and dinner. I had a harder time meeting friends here because I was used to having only Caucasian friends."
    four.after_internment = "After graduation, I volunteered for the Army and was given a year of college before serving. After leaving the army I went to Antioch College, which was very liberal and had little discrimination. After leaving college, I found a passion for City Planning and worked for several programs in this field. I decided to live in inner city Philadelphia with liberals and Quakers. I worked for many causes, including the creation of an integrated elementary school in the area. Forty years later, I am happy to say that this neighborhood is integrated, and has an amazing diversity of residents."
    four.login = "shoji"
    four.password = "profile4"
    four.photo_path = "shoji.jpg"
    four.save
  end

  def down
    User.destroy_all
  end
end
