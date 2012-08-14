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
