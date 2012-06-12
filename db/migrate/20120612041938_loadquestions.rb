class Loadquestions < ActiveRecord::Migration
  def up
    one = Question.new()
    one.question = "What kind of work did you do at the camp?"
    one.poster = "Rahul Mitra"
    one.save
    
    comment_one = Comment.new()
    comment_one.comment = "I actually helped found the garment factory at Manzanar, if I remember correctly it was around May of 1942. There were ten of us that thought it would be a useful thing in the camp for people to have a place where they could bring their clothes to be patched up. All we had was one portable sewing machine that we borrowed from someone else. The camp directors thought it was a good idea. Such a good idea in fact, that they expanded our operation to have a total of 38 industrial machines and operate in two different warehouses. A good number of people in the camp worked in the garment factory with us. It was tough, and sometimes dangerous work. People who were not properly trained to use the industrial machines had the potential to really hurt themselves, and so the camp tried to make sure that only people above a certain age worked with us. The factories got incredibly hot, and it wasn't uncommon for people to get sick from hear exhaustion. If that happened, the camp would no longer allow them to work at the garment factory, and they would often be moved to the camouflage net factory, where the pay was higher."
    comment_one.user_id = 1
    comment_one.question_id = 1
    comment_one.save   
    
    comment_two = Comment.new()
    comment_two.comment = "I owned my own handmade furniture shop. It was difficult to jump through all the red tape to get materials into camp, but my work was very satisfying. Throughout all the hardships and mistreatment, at least I could offer my fellow Japanese Americans a small amount of comfort. When I had my shop that was not in the camps, I used to make much more luxurious furniture. It used to sell it for a high price, and I spent a good amount of time on the craftsmanship and making it look nice. At the camp, things were different. I was more focused on creating a product that anybody could afford. I did not spend time on special designs and things of that nature at all, because I knew that the best thing I could do for my people was to create something that was available to everyone. My wife worked at the dressmaking shop right next door. The owners of that shop operated on very similar ideals as I operated my shop on. They told me that before the camp, their dresses used to be so expensive nobody in the camp could have bought them. Now, they focused on creating products that could make every girl in every family feel pretty, while also being affordable. As awful as those days in the camp were, they really did teach me something. People aren't horrible. In fact, people aren't even bad. We all helped each other inside the camp. We all tried to make it seem like a real home. I sold cheap furniture, my neighbor made cheap dresses, and whatever money we lost in profit we gained forty times over in the happiness of our peers."
    comment_two.user_id = 2
    comment_two.question_id = 1
    comment_two.save   
    
    two = Question.new()
    two.question = "Why was mealtime so important at camp?"
    two.poster = "Hussain Kader"
    two.save
    
    comment_three = Comment.new()
    comment_three.comment = "Meal time was by far my favorite time of the day at camp. Throughout the day, everyone was always busy. When I came back from school, my parents were usually still working, I had to make sure my grandpa had taken his medication, and then give him some hot water, which he liked to drink before his nap. Then, nobody would be home for a whole hour! Once my parents came home, we would get ready to eat. When we finally went to the mess hall, I would always be starving, and the rice would smell delicious. I would eat with my parents for a little while first, and they would tell me about their days and ask me about mine. After that, I got to go hang out with my friends. In the dining hall, we would all feel like a big, huge family. My mom always said eating together brings a family close, well I think eating together with a bunch of random people creates a family. I would no longer be scared of being an 'enemy' of the United States, because I would look at all the nice, smiling people around me, and know that they could never really be enemies of anything."
    comment_three.user_id = 4
    comment_three.question_id = 2
    comment_three.save
    
    comment_four = Comment.new()
    comment_four.comment = "Mealtime brought a sense of normalcy and consistency to camp that it usually lacked. We were moved constantly, we never knew our financial situation, and many of us were scared that at any time the United States would actually try and deport us. Nonetheless, we still knew that every day at camp we would have our mealtimes. For a short amount of time, we could swallow our fears. We could stop thinking about what was going to happen. During those mealtimes, I found refuge in the kind eyes of my fellow Japanese Americans. I found refuge in normal conversations, about home and food and family. The mess hall was my safe haven. It brought me together with everyone in the camp, and we all shared a special time of our days with each other that we won't ever forget. Also, I would be lying if I said I hated the food. It wasn't home food, nor was it even close, but we made it our own. Sometimes I still find myself wishing I could have some weenie royale."
    comment_four.user_id = 3
    comment_four.question_id = 2
    comment_four.save
    
    comment_five = Comment.new()
    comment_five.comment = "I guess I am the discerning opinion in this case, but I hated mealtime at the camps. To me, it seemed like a huge collection of people who were obviously hurting, but tried to act like everything was okay. We tried to cook our own 'Japanese' food with the gross food they gave us, but it never turned out well. It was a fake family feeling. All the people would smile and talk together, but they knew that someone they were talking to would probably try to rob their house that night and someone else would gladly stab them in the back if it helped them be closer to getting out of the camp. Mealtime was the time at Manzanar that we all pretended everything was okay. That we all pretended that we were friends. I hated it. I hate thinking about it. I hate when people describe it as such an enjoyable experience. Nothing at Manzanar was enjoyable."
    comment_five.user_id = 1
    comment_five.question_id = 2
    comment_five.save
    
    three = Question.new()
    three.question = "What is the most important thing that you left behind?"
    three.poster = "Jai Sajnani"
    three.save
    
    comment_six = Comment.new()
    comment_six.comment = "My family was forced to take only the clothes on our backs and what we could fit in two plastic trash bags when we evacuated our home. Many of our family cultural objects were left behind as a result. My grandfather's ashes, a pair of chopsticks that belonged to my great-aunt, and the judogi I received when I visited the Kodokan to study in the 1930's among many other objects. These were family relics that I intended to pass on to my children, but they were nowhere to be found when we returned to our home as it was looted in our absence."
    comment_six.user_id = 1
    comment_six.question_id = 3
    comment_six.save
    
    comment_seven = Comment.new()
    comment_seven.comment = "I would have to say the family business. Our family ran a very successful dental practice until we were taken to Manzanar. It was very hard for us to be taken to the camp, not knowing the future of our practice. It turns out that our staff abandoned the business without us there to supervise it, so we lost our consumer base. The worst part, was, however, when we returned to our old building after our release from Manzanar to find it defaced with \"Japs not welcome anymore\"."
    comment_seven.user_id = 4
    comment_seven.question_id = 3
    comment_seven.save
    
    four = Question.new()
    four.question = "What was it like when you returned? Did you still face a lot of racism from the community?"
    four.poster = "Adam Goldberg"
    four.save
    
    comment_eight = Comment.new()
    comment_eight.comment = "After leaving Manzanar, I was completely lost. I no longer had a home to return to. Feeling bitter and hopeless, I was resolute in keeping the promise I had made to myself to not return to school. The camp had stolen my drive and ambition, as well as my freedom. As fearful and anxious as I had been about returning to life outside the camp, the racism and hatred I had experienced before internment was greatly subdued. Before entering the camp it seemed as if the the J-word was everywhere. I was called a \"Jap\" to my face on numerous occasions. Political cartoons featured subhuman Japanese characters with monkey-like appearances. Upon my return from, I was only occasionally overheard conversations referring to me as \"that sneaky Jap\"."
    comment_eight.user_id = 3
    comment_eight.question_id = 4
    comment_eight.save
    
    comment_nine = Comment.new()
    comment_nine.comment = "It was very difficult to re-assimilate after my return from the camp. The prison like environment of the camp had served to break down the strong familial bonds my family cherished before internment. Before the camp, we enjoyed our rituals together as family-like family meals. In the big, impersonal mess halls and their lack of privacy our family rituals were destroyed. The once strong sense of family unity we felt was diminished by the close, cramped quarters of the 20' X 20' cubicle we were forced to call home. We would rather roam the camp or volunteer than stay in those cramped barracks."
    comment_nine.user_id = 2
    comment_nine.question_id = 4
    comment_nine.save
    
    comment_ten = Comment.new()
    comment_ten.comment = "I was expecting to encounter intense hatred and prejudice upon my return from camp. I was frightened by the numerous rumors of violence-including incidences of Japanese beatings. In reality, the prejudice I experienced was much more subtle. When I returned to the community and entered a new school, I was approached by another student who expressed amazement at my ability to speak English. It was then that I realized the racism I would need to confront was very subtle and not always overt-but just as painful!"
    comment_ten.user_id = 1
    comment_ten.question_id = 4
    comment_ten.save
    
    five = Question.new()
    five.question = "What is your favorite food that you ate at the camp?"
    five.poster = "Katrinka Reinhart"
    five.save
    
    comment_ten = Comment.new()
    comment_ten.comment = "When we first arrived at the camp, the long lines for meals were overwhelming. Once you obtained your meal, the tables were huge. There was no feeling of homeyness. The food was tasteless and we certainly missed our meals from home!  My favorite food was when we were able to eat the fresh food from the camp gardens. Melons and tomatoes were my favorites!"
    comment_ten.user_id = 1
    comment_ten.question_id = 5
    comment_ten.save
    
    comment_eleven = Comment.new()
    comment_eleven.comment = "In the first few weeks at Manzanar, most of us hated the meals. The meals improved slightly as the mess halls began-but the portions were small and incredibly bland to taste. Starches were abundant, with bread and beans a mainstay.  Initially, we were so desperate for 'real food' that we sent a letter to a non-Japanese friend back home begging for her to send us some food. She obliged by sending us some chocolates and jam. Food quality improved slowly over the months and I remember my joy at having fried chicken and ice cream!"
    comment_eleven.user_id = 4
    comment_eleven.question_id = 5
    comment_eleven.save
    
  end

  def down
  end
end
