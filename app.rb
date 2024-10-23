require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end


get("/howdy")do
erb(:hello)
end

get("/goodbye") do
  erb(:bye)
end

get("/square/new") do
  erb(:new_square_calc)
end

get '/square/results' do
@the_num= params.fetch("users_number").to_f
@the_result=   @the_num**2

  erb(:square_results)
end


get("/square_root/new") do
  erb(:new_square_root_calc)
end

get("/square_root/results") do
  @the_num= params.fetch("users_number").to_f
@the_result=   @the_num**0.5
  erb(:square_root_results)
end


get("/payment/new")do
erb(:new_payment_calc)
end

get("/payment/results")do
@the_apr= params.fetch("user_apr").to_f
@the_apr2=@the_apr.to_fs(:percentage, { :precision => 4 } )  
@the_years= params.fetch("user_years").to_i
@the_pv= params.fetch("user_pv").to_f

@the_result=(@the_apr/100/12)

erb(:payment_results)
end


get("/random/new")do
erb(:new_random_calc)
end

get("/random/results")do
@the_min= params.fetch("user_min").to_f
@the_max= params.fetch("user_max").to_f
@the_result=   rand(@the_min..@the_max)

erb(:random_results)
end


get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
