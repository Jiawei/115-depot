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

CategoryNode.create(:title => 'Novel', :parent => 'Literature')
CategoryNode.create(:title => 'Essay', :parent => 'Literature')
CategoryNode.create(:title => 'Prose', :parent => 'Literature')
CategoryNode.create(:title => 'Fairy Tale', :parent => 'Literature')
CategoryNode.create(:title => 'Poetry', :parent => 'Literature')
CategoryNode.create(:title => 'Masterpiece', :parent => 'Literature')

Category.create(:title => 'Popularity')
CategoryNode.create(:title => 'Comic', :parent => 'Popularity')
CategoryNode.create(:title => 'Youth', :parent => 'Popularity')
CategoryNode.create(:title => 'Reasoning', :parent => 'Popularity')
CategoryNode.create(:title => 'Romance', :parent => 'Popularity')
CategoryNode.create(:title => 'Science', :parent => 'Popularity')
CategoryNode.create(:title => 'Fantasy', :parent => 'Popularity')

Category.create(:title => 'Culture')
CategoryNode.create(:title => 'History', :parent => 'Culture')
CategoryNode.create(:title => 'Philosophy', :parent => 'Culture')
CategoryNode.create(:title => 'Biography', :parent => 'Culture')
CategoryNode.create(:title => 'Design', :parent => 'Culture')
CategoryNode.create(:title => 'Movie', :parent => 'Culture')
CategoryNode.create(:title => 'Music', :parent => 'Culture')

Category.create(:title => 'Life')
CategoryNode.create(:title => 'Travel', :parent => 'Life')
CategoryNode.create(:title => 'Encouragement', :parent => 'Life')
CategoryNode.create(:title => 'Education', :parent => 'Life')
CategoryNode.create(:title => 'Delicacy', :parent => 'Life')
CategoryNode.create(:title => 'Health', :parent => 'Life')
CategoryNode.create(:title => 'Home', :parent => 'Life')

Category.create(:title => 'Business')
CategoryNode.create(:title => 'Economics', :parent => 'Business')
CategoryNode.create(:title => 'Management', :parent => 'Business')
CategoryNode.create(:title => 'Finance', :parent => 'Business')
CategoryNode.create(:title => 'Marketing', :parent => 'Business')
CategoryNode.create(:title => 'Share', :parent => 'Business')
CategoryNode.create(:title => 'Enterprise', :parent => 'Business')

Category.create(:title => 'Science and Technology')
CategoryNode.create(:title => 'Internet', :parent => 'Science and Technology')
CategoryNode.create(:title => 'Programming', :parent => 'Science and Technology')
CategoryNode.create(:title => 'Interaction', :parent => 'Science and Technology')
CategoryNode.create(:title => 'Algorithm', :parent => 'Science and Technology')
CategoryNode.create(:title => 'Communication', :parent => 'Science and Technology')
CategoryNode.create(:title => 'Neural Network ', :parent => 'Science and Technology')
