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
  :price => 42.95)
# . . .
Product.create(:title => 'Programming Ruby 1.9',
  :description =>
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  :image_url => '/images/ruby.jpg',
  :price => 49.50)
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
  :price => 43.75)

Category.create(:title => 'Literature')

Categorynode.create(:title => 'Novel', :parent => 'Literature')
Categorynode.create(:title => 'Essay', :parent => 'Literature')
Categorynode.create(:title => 'Prose', :parent => 'Literature')
Categorynode.create(:title => 'Fairy Tale', :parent => 'Literature')
Categorynode.create(:title => 'Poetry', :parent => 'Literature')
Categorynode.create(:title => 'Masterpiece', :parent => 'Literature')

Category.create(:title => 'Popularity')
Categorynode.create(:title => 'Comic', :parent => 'Popularity')
Categorynode.create(:title => 'Youth', :parent => 'Popularity')
Categorynode.create(:title => 'Reasoning', :parent => 'Popularity')
Categorynode.create(:title => 'Romance', :parent => 'Popularity')
Categorynode.create(:title => 'Science', :parent => 'Popularity')
Categorynode.create(:title => 'Fantasy', :parent => 'Popularity')

Category.create(:title => 'Culture')
Categorynode.create(:title => 'History', :parent => 'Culture')
Categorynode.create(:title => 'Philosophy', :parent => 'Culture')
Categorynode.create(:title => 'Biography', :parent => 'Culture')
Categorynode.create(:title => 'Design', :parent => 'Culture')
Categorynode.create(:title => 'Movie', :parent => 'Culture')
Categorynode.create(:title => 'Music', :parent => 'Culture')

Category.create(:title => 'Life')
Categorynode.create(:title => 'Travel', :parent => 'Life')
Categorynode.create(:title => 'Encouragement', :parent => 'Life')
Categorynode.create(:title => 'Education', :parent => 'Life')
Categorynode.create(:title => 'Delicacy', :parent => 'Life')
Categorynode.create(:title => 'Health', :parent => 'Life')
Categorynode.create(:title => 'Home', :parent => 'Life')

Category.create(:title => 'Business')
Categorynode.create(:title => 'Economics', :parent => 'Business')
Categorynode.create(:title => 'Management', :parent => 'Business')
Categorynode.create(:title => 'Finance', :parent => 'Business')
Categorynode.create(:title => 'Marketing', :parent => 'Business')
Categorynode.create(:title => 'Share', :parent => 'Business')
Categorynode.create(:title => 'Enterprise', :parent => 'Business')

Category.create(:title => 'Science')
Categorynode.create(:title => 'Internet', :parent => 'Science')
Categorynode.create(:title => 'Programming', :parent => 'Science')
Categorynode.create(:title => 'Interaction', :parent => 'Science')
Categorynode.create(:title => 'Algorithm', :parent => 'Science')
Categorynode.create(:title => 'Communication', :parent => 'Science')
Categorynode.create(:title => 'Neural Network ', :parent => 'Science')
