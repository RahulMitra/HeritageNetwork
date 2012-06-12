class UserController < ApplicationController
  def profile
    @users = User.all
		@user = User.find_by_id(params[:id])		
		if !(@user.nil?)
	    @title =  @user.first_name + " " +
		            @user.last_name + "'s Profile"
	  end 
  end
  
  def profiles
    @title = "Profiles"
    @users = User.all
  end
  
  def login
    @title = "Login Page"
  end

  def post_login
    @user = User.find_by_login(params[:user][:login])
    
    if(@user.nil?)  
      flash[:message] = "Invalid Username"
      redirect_to :back      
    elsif @user.password_valid?(params[:user][:password])      
        session[:username] = params[:user][:login]
        session[:id] = @user.id
        session[:firstName] = @user.first_name
        redirect_to :controller => "user", :action => "profile", :id => @user.id
    else
        flash[:message] = "Incorrect Password"
        redirect_to :back  
    end 
  end
  
  def edit_profile
    @title = "Edit Profile"
    @user = User.find_by_id(session[:id])     
  end
  
  def post_edit
    @user = User.find_by_id(session[:id])     
    @user.first_name = params[:edits][:first_name]
    @user.last_name = params[:edits][:last_name]
    @user.sex = params[:edits][:sex]
    @user.marital_status = params[:edits][:marital_status]
    @user.race = params[:edits][:race]
    @user.degree = params[:edits][:degree]
    @user.occupation = params[:edits][:occupation]
    @user.birth_year = params[:edits][:birth_year]
    @user.languages = params[:edits][:languages]
    @user.mother_birth_place = params[:edits][:mother_birth_place]
    @user.father_birth_place = params[:edits][:father_birth_place]
    @user.before_internment = params[:edits][:before_internment]
    @user.during_internment = params[:edits][:during_internment]
    @user.after_internment = params[:edits][:after_internment]
    @user.save
    redirect_to :controller => "user", :action => "profile", :id => @user.id
  end

  def logout
    reset_session
    redirect_to :controller => "home", :action => "index"
  end
  
  def register
    @title = "New User Registration"
  end
  
  def post_register
    @newUser = User.new
    @newUser.first_name = params[:register][:firstName]
    @newUser.last_name = params[:register][:lastName]
    @newUser.login = params[:register][:username]
    if !(params[:register][:password].empty?)
      @newUser.password = params[:register][:password]
      @newUser.password_confirmation = params[:register][:password_confirmation]  
    end
      
    if(@newUser.valid?)
      @newUser.save
      flash[:notice] = "Account Successfully Created!"
      session[:username] = @newUser.login
      session[:id] = @newUser.id
      session[:firstName] = @newUser.first_name
      redirect_to :controller => "user", :action => "profile", :id => session[:id]
    else
      flash[:notice] = @newUser.errors.full_messages
      redirect_to :controller => "user", :action => "register"
    end
  end
  
  def post_delete
    @user = User.find_by_id(session[:id])
    @user.delete
    redirect_to :controller => "home", :action => "index"
    reset_session
  end

end