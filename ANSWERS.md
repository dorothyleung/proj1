# Q0: Why are these two errors being thrown?
Our database schema starts off empty and we need to activate our migration so we can later update any new data and move it into our database. After running migration, we have an uninitialized error of class Pokemon because we have not defined the class name and its information within our database schema so when we activate migration it does not have a model about Pokemon. Additionally, every time we created a new model, we need to run rails db:migrate to update our database schema.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random Pokemon that appears belong to wild categories that they do not need a trainer to train them, hence every time we refresh the page we would see a different Pokemon. There are only four of them since we only initial our seeding of 4 Pokemon into our database.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
We are capturing the Pokemon object by id using capture_path, creating button_to defaults to POST, however, if we want to ask for the id of the Pokemon and be able to capture it, instead of POST request, we enforce it to GET request to get the data and capture it, then we use the data and pass on to the capture path that routes will help us patch a request to reach to the controller, capture_path also helps us keep track of all the Pokemon id so as soon as we capture all of the Pokemon, we cannot capture any more Pokemon.
# Question 3: What would you name your own Pokemon?
I would like to name my Pokemon as Snorlax if there is Snorlax; in general, should be pokemon.name
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirect_to to a trainer_path. I recognized it was not trainers_path since in trainers_controller we defined trainers to be all trainers whereas trainer is a specific trainer by id. I also passed in an argument saying we are trying to damage Pokemon's health of current trainer on his/her profile page. Otherwise, when I did trainers_path, it would redirect me to the list of all trainers which does not make sense.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
By adding this line will raise error of a message if I enter duplicated name. It is an Active Model Errors that we use to handle error message for our object. It renders in views/layouts/application.html.erb, but if we passed in error message in our pokemon controller, we could also render the message when it is being rendered in application.html.erb.
# Give us feedback on the project and decal below!
Interesting project:)
# Extra credit: Link your Heroku deployed app
https://dorothyspokeportal.herokuapp.com/
