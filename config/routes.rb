Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })

  # Places routes
  get("/places", { :controller => "places", :action => "index" })
  get("/places/new", { :controller => "places", :action => "new" })
  post("/places", { :controller => "places", :action => "create" })
  get("/places/:id", { :controller => "places", :action => "show" })

  # Entries routes
  get("/places/:id/entries/new", { :controller => "entries", :action => "new" })
  post("/places/:id/entries", { :controller => "entries", :action => "create" })
end
