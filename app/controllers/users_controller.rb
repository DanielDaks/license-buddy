class UsersController < ApplicationController

  def show_dashboard
    @id = params["id"]
    @user = current_user
    @users = User.all
    @myCourses = Course.find_all_by_user_id(current_user.id)
    # @usercourses.create(params[:course])
    @course = Course.new(params[:course])
    # @progress3 = Course.where("user_id = ?", current_user.id).sum(:credit) / 120.0
    @totalRequirements = 2
    @progressRequirement = Requirement.select(:min).where(:distro => "General", :id => Statute.select(:requirement_id).where(:license_id => current_user.license_id)).sum(:min)
    @progress = current_user.courses.sum(:credit) / @progressRequirement.to_f
    # @org = current_user.license.requirements.attribute
    if current_user.license != nil then @sub_req = current_user.license.requirements
    @requirement_distros = current_user.license.requirements.select(:distro) 
    @sub_req.each do |s|
    @sub_progress = current_user.courses
    end
  end

    respond_to do |format|
      if @course.save
        format.html { redirect_to index_path, notice: 'Course was successfully created.' }
        # format.json { render json: @course, status: :created, location: @course }
        # redirect_to index_path
      else
        format.html 
        format.json
      end
    end
  end

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def download
    data = open(params[:file_url]) 
    send_data data.read, :type => data.content_type, :x_sendfile => true, :filename => params[:file_name]
  end 
end