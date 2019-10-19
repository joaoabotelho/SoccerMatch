class TeamsController < ApplicationController
  before_action :set_team, only: [:leave_team, :join_team, :show, :edit, :update, :destroy]

  # GET /teams
  # GET /teams.json
  def index
    if params[:name]
      @teams = Team.where('name LIKE ?', "%#{params[:name]}%")
    else
      @teams = Team.all
    end
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    @players = @team.players
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)

    respond_to do |format|
      if @team.save
        @team.join_team(current_user,true)
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /teams/1/join_team
  def join_team
    @team.join_team(current_user, false)
    respond_to do |format|
      format.html { redirect_to @team, notice: 'Joined team successfully' }
    end
  end

  def leave_team
    @team.players.delete(current_user.player)
    respond_to do |format|
      format.html { redirect_to @team, notice: 'Leaved team successfully' }
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.permit(:name, :current_points, :current_goals)
    end
end
