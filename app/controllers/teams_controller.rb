class TeamsController < ApplicationController
  # GET /teams
  def index
    @teams = Team.find(:all)
  end

  # GET /teams/1
  def show
    @team = Team.find(params[:id])
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
    @team = Team.find(params[:id])
  end

  # POST /teams
  def create
    @team = Team.new(params[:team])

    if @team.save
      flash[:notice] = 'Team was successfully created.'
      redirect_to(@team)
    else
      render :action => "new"
    end
  end

  # PUT /teams/1
  def update
    @team = Team.find(params[:id])

    if @team.update_attributes(params[:team])
        flash[:notice] = 'Team was successfully updated.'
				redirect_to(@team)
    else
     	render :action => "edit"
    end
  end

  # DELETE /teams/1
  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    redirect_to(teams_url)
  end
end
