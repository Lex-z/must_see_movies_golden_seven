Rails.application.routes.draw do

get("/", { :controller => "directors", :action => "index"})

# Route to CREATE entry
get("/directors/new", { :controller => "directors", :action => "new_form"})
get("/create_directors", { :controller => "directors", :action => "create_row"})

get("/directors", { :controller => "directors", :action => "index"})

# Route to show detailed page
get("/directors/:id", { :controller => "directors", :action => "show"})

# Route to DELETE entry
get("/delete_director/:id", { :controller => "directors", :action => "delete_row"})

# Route to UPDATE entry
get("/directors/:id/edit", { :controller => "directors", :action => "edit_form"})
get("/update_directors/:id", { :controller => "directors", :action => "edit_row"})


end
