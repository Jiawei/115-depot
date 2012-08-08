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
Category_node.create(:title => 'Novel', :parent => 'Literature')
Category_node.create(:title => 'Essay', :parent => 'Literature')
Category_node.create(:title => 'Prose', :parent => 'Literature')
Category_node.create(:title => 'Fairy Tale', :parent => 'Literature')
Category_node.create(:title => 'Poetry', :parent => 'Literature')
Category_node.create(:title => 'Masterpiece', :parent => 'Literature')

Category.create(:title => 'Popularity')
Category_node.create(:title => 'Comic', :parent => 'Popularity')
Category_node.create(:title => 'Youth', :parent => 'Popularity')
Category_node.create(:title => 'Reasoning', :parent => 'Popularity')
Category_node.create(:title => 'Romance', :parent => 'Popularity')
Category_node.create(:title => 'Science', :parent => 'Popularity')
Category_node.create(:title => 'Fantasy', :parent => 'Popularity')

Category.create(:title => 'Culture')
Category_node.create(:title => 'History', :parent => 'Culture')
Category_node.create(:title => 'Philosophy', :parent => 'Culture')
Category_node.create(:title => 'Biography', :parent => 'Culture')
Category_node.create(:title => 'Design', :parent => 'Culture')
Category_node.create(:title => 'Movie', :parent => 'Culture')
Category_node.create(:title => 'Music', :parent => 'Culture')

Category.create(:title => 'Life')
Category_node.create(:title => 'Travel', :parent => 'Life')
Category_node.create(:title => 'Encouragement', :parent => 'Life')
Category_node.create(:title => 'Education', :parent => 'Life')
Category_node.create(:title => 'Delicacy', :parent => 'Life')
Category_node.create(:title => 'Health', :parent => 'Life')
Category_node.create(:title => 'Home', :parent => 'Life')

Category.create(:title => 'Business')
Category_node.create(:title => 'Economics', :parent => 'Business')
Category_node.create(:title => 'Management', :parent => 'Business')
Category_node.create(:title => 'Finance', :parent => 'Business')
Category_node.create(:title => 'Marketing', :parent => 'Business')
Category_node.create(:title => 'Share', :parent => 'Business')
Category_node.create(:title => 'Enterprise', :parent => 'Business')

Category.create(:title => 'Science and Technology')
Category_node.create(:title => 'Internet', :parent => 'Science and Technology')
Category_node.create(:title => 'Programming', :parent => 'Science and Technology')
Category_node.create(:title => 'Interaction', :parent => 'Science and Technology')
Category_node.create(:title => 'Algorithm', :parent => 'Science and Technology')
Category_node.create(:title => 'Communication', :parent => 'Science and Technology')
Category_node.create(:title => 'Neural Network ', :parent => 'Science and Technology')
