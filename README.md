# Movie Time

Movie time project, Users can create categories and movies of their choice, where they create movies and give title, description and a photo about it and other users can vote for the movies they like.

## Technologies used

- Ruby
- Rails
- Bootstrap
- Will_paginate
- Rubocop
- Webpacker
- postgresql
- Git

## 🚀 the project

This project can be found in (https://github.com/arikarim/rails-capstone/tree/main)




### ✨ [live version]()

## Home Page

###   ![screenshot](img/homepage.png)


## Show page

###   ![screenshot](img/showpage.png)


## Register page

###   ![screenshot](img/register.png)


## Log in page

###   ![screenshot](img/signinn.png)

## New Movie page

###   ![screenshot](img/newarticle.png)

## New Category page

###   ![screenshot](img/newcategory.png)


## 🔨 instructions

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Next, seed the database:

```
$ rails db:seed
```

## Rspec and Capibara

### Important note!

In order to run the tests inside the App/assets/stylesheets please comment out(main.css.scss) because the images are  conflicting with with the Capibara.

when you did that run:

- bundle exec rspec

when the tests passed you can ru the server with:

```
$ rails server
```



## 🤝 contributing

contributions, issues, and feature requests are welcome!<br/>feel free to check [issues page](https://github.com/arikarim/rails-capstone/issues).

1. fork it (https://github.com/arikarim/rails-capstone/fork)
2. create your working branch (git checkout -b [choose-a-name])
3. commit your changes (git commit -am 'what this commit will fix/add/improve')
4. push to the branch (git push origin [chosen-name])
5. create a new pull request

## Author

- GitHub: [@arikarim](https://github.com/arikarim)
- LinkedIn: [AriKarim](https://www.linkedin.com/in/ari-karim-523bb81b3)

## 🙋‍♂ show your support

give a ⭐️ if you like this project!

## 📝 license

This project is [MIT](LICENSE) licensed.
