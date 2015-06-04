# rezort

ReZort is a simple object that will take an sql order string and a url
sort string to let you sort large datasets over many pages (using 
[will_paginate](https://github.com/mislav/will_paginate) or 
[kaminari](https://github.com/amatsuda/kaminari)) without losing state.

### View

Generate a sorted link with the email attribute:

```ruby
link_to_rezort "Email", :email
```

Works the same as the `link_to` method except a second argument for the
sort attribute is needed.

### Ruby 2.1.0 Rails 4.x

```ruby
gem 'rezort', :git => 'http://sna9svascode1/Libraries/Rails-ReZort', :branch => 'master'
```

### Model

Using the `rezort` method with the optional default order argument:

```ruby
@users = User.rezort(params[:sort], "email ASC").page(params[:page])
```

### Rubies

* 2.1.0.

### ORMs

* ActiveRecord
