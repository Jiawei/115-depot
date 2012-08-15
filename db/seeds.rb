# encoding: utf-8
Product.delete_all
Product.create(:title => 'Web Design for Developers',
:description =>
%{<p>
        <em>Web Design for Developers</em> will show you how to make your
        web-based application look professionally designed. We'll help you
        learn how to pick the right colors and fonts, avoid costly interface
        and accessibility mistakes -- your application will really come alive.
        We'll also walk you through some common Photoshop and CSS techniques
        and work through a web site redesign, taking a new design from concept
        all the way to implementation.
      </p>},
:image_url =>   '/images/wd4d.jpg',
:price => 42.95,
:seller_id => 4,
:categorynode_name => 'Programming')
# . . .
Product.create(:title => 'Programming Ruby 1.9',
:description =>
%{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
:image_url => '/images/ruby.jpg',
:price => 49.50,
:seller_id => 5,
:categorynode_name => 'Programming')
# . . .

Product.create(:title => 'Rails Test Prescriptions',
:description =>
%{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
:image_url => '/images/rtp.jpg',
:price => 43.75,
:seller_id => 6,
:categorynode_name => 'Programming')

Product.create(:title => 'The Light Between Oceans',
:description =>
'The debut of a stunning new voice in fiction— a novel both heartbreaking and transcendent
    After four harrowing years on the Western Front, Tom Sherbourne returns to Australia and takes a job
    as the lighthouse keeper on Janus Rock, nearly half a day journey from the coast.Years later, after two
    miscarriages and one stillbirth, the grieving Isabel hears a baby cries on the wind. A boat has washed
    up onshore carrying a dead man and a living baby.',
:image_url => 'The Light Between Oceans.jpg',
:price => 15.5,
:seller_id => 4,
:categorynode_name => 'Novel')

Product.create(:title => 'The Roots of the Olive Tree',
:description =>
'Anna is not interested in unlocking secrets the Keller blood holds. She believes there are some truths
that must stay hidden, including certain knowledge about her origins that she has carried for more than a
century. Like Anna, each of the Keller women conceals her true self from the others. While they are bound by
blood and the house they share, living together has not always been easy. And it is about to become more
complicated now that Erin, the youngest, is back, alone and pregnant, after two years abroad with an opera ',
:image_url => 'The Roots of the Olive Tree.jpg',
:price => 20.5,
:seller_id => 4,
:categorynode_name => 'Novel')

Product.create(:title => 'What The Nanny Saw',
:description =>
'Written with Fiona Neill delicious humor and addictive style, What the Nanny Saw is a keenly observed, often comical chronicle of the urban wealthy elite, of parents who are often too busy to notice what is going on under their own noses, of children left to their own devices, and of a young nanny thrown into a role she doesn know how to play. It is a morality tale of our time, a tale of betrayal, the corrosive influence of too much money, and why good people sometimes do bad things.',
:price => 34,
:seller_id => 4,
:categorynode_name => 'Novel')

Product.create(:title => 'A Game of Thrones',
:description =>
'Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell,
sinister and supernatural forces are massing beyond the kingdom’s protective Wall.',
:image_url => 'A Game of Thrones.jpg',
:price => 13,
:seller_id => 5,
:categorynode_name => 'Fantasy')

Product.create(:title => 'Life of Pi',
:description =>
'Life of Pi, first published in 2002, became an international bestseller and remains one
of the most extraordinary and popular works of contemporary fiction.',
:image_url => 'Life of Pi.jpg',
:price => 12,
:seller_id => 6,
:categorynode_name => 'Fantasy')

Product.create(:title => 'River Town',
:description =>
'In the heart of China\'s Sichuan province, amid the terraced hills of the Yangtze River valley, lies the remote town of Fuling. Like many other small cities in this ever-evolving country, Fuling is heading down a new path of change and growth, which came into remarkably sharp focus when Peter Hessler arrived as a Peace Corps volunteer, marking the first time in more than half a century that the city had an American resident. ',
:price => 34,
:seller_id => 6,
:categorynode_name => 'Essay')

Product.create(:title => 'The Art of Travel',
:description =>
'Any Baedeker will tell us where we ought to travel, but only Alain de Botton will tell us how and why. With the same intelligence and insouciant charm he brought to How Proust Can Save Your Life, de Botton considers the pleasures of anticipation; the allure of the exotic, and the value of noticing everything from a
seascape in Barbados to the takeoffs at Heathrow. ',
:image_url => 'The Art of Travel.jpg',
:price => 16,
:seller_id => 6,
:categorynode_name => 'Essay')

Product.create(:title => 'Batman The Dark Knight Returns',
:description =>
"If any comic has a claim to have truly reinvigorated the genre, then The Dark Knight Returns by Frank Miller--known also for his excellent Sin City series and his superb rendering of the blind superhero Daredevil--is probably the top contender. Batman represented all that was wrong in comics and Miller set himself a tough task taking on the camp crusader and turning
this laughable, innocuous children's cartoon character into a hero for our times.",
:image_url => 'Batman The Dark Knight Returns.jpg',
:price => 15.5,
:seller_id => 5,
:categorynode_name => 'Comic')

Product.create(:title => 'Nana',
:description =>
"Nana Komatsu is a young woman who's endured an unending string of boyfriend problems. Moving to Tokyo, she's hoping to take control of her life and put all those messy misadventures behind her. She's looking for love and she's hoping to find it in the big city. Nana Osaki,
on the other hand, is cool, confident and focused. ",
:image_url => 'Nana.jpg',
:price => 14,
:seller_id => 5,
:categorynode_name => 'Comic')

Category.delete_all
Category.create(:title => 'Literature')
Categorynode.create(:title => 'Novel', :category_id => '1')
Categorynode.create(:title => 'Essay', :category_id => '1')
Categorynode.create(:title => 'Poetry', :category_id => '1')

Category.create(:title => 'Popularity')
Categorynode.create(:title => 'Comic', :category_id => '2')
Categorynode.create(:title => 'Reasoning', :category_id => '2')
Categorynode.create(:title => 'Fantasy', :category_id => '2')

Category.create(:title => 'Culture')
Categorynode.create(:title => 'History', :category_id => '3')
Categorynode.create(:title => 'Biography', :category_id => '3')
Categorynode.create(:title => 'Movie', :category_id => '3')

Category.create(:title => 'Life')
Categorynode.create(:title => 'Encouragement', :category_id => '4')
Categorynode.create(:title => 'Delicacy', :category_id => '4')
Categorynode.create(:title => 'Health', :category_id => '4')

Category.create(:title => 'Business')
Categorynode.create(:title => 'Economics', :category_id => '5')
Categorynode.create(:title => 'Finance', :category_id => '5')
Categorynode.create(:title => 'Marketing', :category_id => '5')

Category.create(:title => 'Science')
Categorynode.create(:title => 'Internet', :category_id => '6')
Categorynode.create(:title => 'Programming', :category_id => '6')
Categorynode.create(:title => 'Algorithm', :category_id => '6')

User.delete_all
User.create(:name => 'admin', :password => '1', :password_confirmation => '1', :usertype => 'admin')
User.create(:name => '1', :password => '1', :password_confirmation => '1', :usertype => 'customer', :address => 'New York', :email => 'aaa@qq.com')
User.create(:name => '2', :password => '1', :password_confirmation => '1', :usertype => 'customer', :address => 'London', :email => 'bbb@qq.com')
User.create(:name => '3', :password => '1', :password_confirmation => '1', :usertype => 'customer', :address => 'Guangzhou', :email => '1198156572@qq.com')
User.create(:name => 'seller1', :password => '1', :password_confirmation => '1', :usertype => 'seller', :address => 'Guangzhou', :email => '1198156572@qq.com')
User.create(:name => 'seller2', :password => '1', :password_confirmation => '1', :usertype => 'seller', :address => 'Shanghai', :email => '1198156572@qq.com')
User.create(:name => 'seller3', :password => '1', :password_confirmation => '1', :usertype => 'seller', :address => 'Beijing', :email => '1198156572@qq.com')

