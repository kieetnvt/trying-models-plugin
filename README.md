# TryingModels

This project rocks and uses MIT-LICENSE.

Basically to create new Rails Plugins.

In this example, I create acts_as_tryable plugins follow [the Rails Guide Plugins](http://guides.rubyonrails.org/plugins.html).

Understand the `ActiveSupport::Concern` and deep undertood both `include` vs `extend`.

# How

Adding `acts_as_tryable` to your model file. Ex: app/models/article.rb

```ruby
class Article < ActiveRecord::Base
  acts_as_tryable
end
```

# Use

Everywhere when you look at the `@instance`

Ex:

```ruby
@article = Article.new(name: "example", content: "example")

# try call hello method
@article.hello

# result
# -> "Undefined Method"
# -> it replacement for `raise exception default make app crash`
```

It not vere awesome, It basic, It show me how to understand `extend` `include` `attributes` `how active record work`
