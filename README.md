



Section 4, Lec. 56

***  test-driven development:  ***

Recipe:
-recipe should be valid
-name is required
-description is required
-chef_id should be present **
-set max length for name and description (perhaps a minimum too)
-ActiveRecord Assertions (for testing)


Chef: 
-chefname should be present
-email should be present
-size restrictions for email & chefname
-email address should be valid format
-email should be unique, and case insensitive


------------------------------------------------------------------------------------------
Sec 4, Lect 66 "Restful Routes"

Prefix       Verb     URI Pattern        Controller#Action
--------     ----     -----------        -----------------
recipes      GET      /recipes           recipes#index
new_recipe   GET      /recipes/new       recipes#new      (display a new form)
             POST     /recipes           recipes#create   (submit information from the form)
edit_recipe  GET      /recipes/:id/edit  recipes#edit     (display an Edit Form)
             PATCH    /recipes/:id       recipes#update   (Submit the edited form content)
recipe       GET      /recipes/:id       recipes#show     (display a particular recipe)
             DELETE   /recipes/:id       recipes#destroy  (deletes a particular recipe)
             
-------------------------------------------------------------------------------------------


