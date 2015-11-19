# Web Applications and Frameworks

Reference [toolset guidance page](/resources/group-project/toolsets.md).

[Static Websites](https://github.com/gwu-business/student-site) vs [Dynamic Web Applications](https://github.com/gwu-business/salad-system-py)

GET vs POST requests

### Popular Web Application Frameworks

### Sinatra

Sinatra is a web application micro-framework for Ruby.

Installing (requires ruby and rubygems/bundler):

```` sh
gem install sinatra
````

Getting started:

 + http://www.sinatrarb.com/intro.html


### Ruby on Rails

Ruby on Rails is an MVC web application framework for ruby.

Installing (requires ruby and rubygems/bundler):

```` sh
gem install rails
````

Getting started:
 + http://guides.rubyonrails.org/getting_started.html
 + https://www.codeschool.com/courses/rails-for-zombies-redux
 + http://railsforzombies.com.s3.amazonaws.com/Rails-For-Zombies-Slides.pdf

```` sh
rails generate my_app
````

### Flask

Flask is a web application micro-framework for python.

Installing (requires python and pip):

```` sh
pip install Flask
````

Getting started:

 + http://flask.pocoo.org/

### Django

Django is an MVC web application framework for python.

Installing (requires python and pip):

```` sh
pip install django
````

Getting Started:

 + https://www.djangoproject.com/start/

```` sh
django-admin startproject mysite
````














<hr>


## Model View Controller (MVC)

A **Model** represents a class of object within the system scope.
 Models are usually written in an object-oriented programming language. Models are independent from the user interface.

```` rb
# app/models/student.rb (an example ruby on rails model)
class Student < ActiveRecord::Base
  primary_key = :id
  has_many :rentals

  def self.male # a class method
    where(:gender => "male")
  end

  def full_name # an instance method
    "#{first_name} #{last_name}"
  end
end
````

A **View** is an .html web page which represents the user interface. It is common for views to be written mostly in html but to also contain some embedded server-side code.

```` html
<!-- app/views/students/show.html.erb (an example ruby on rails view -->
<h1><%= @student.name %></h1>
````

A **Controller** contains the logic which connects the user interface to the database.

```` rb
# app/controllers/students_controller.rb (an example ruby on rails controller)
class StudentsController < ApplicationController

  # GET /students
  def index
    @students = Student.all
  end

  # GET /students/:id
  def show
    student_id = params[:id]
    @student = Student.find(student_id)
  end
end
````
