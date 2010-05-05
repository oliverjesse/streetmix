class CluesController < ApplicationController
  protect_from_forgery :only => [:destroy]
  before_filter :set_team
  
  # GET /clues
  # GET /clues.xml
  def index
    @clues = @team.clues

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clues }
      format.json { render :text => @clues.to_json }
    end
  end

  # GET /clues/1
  # GET /clues/1.xml
  def show
    @clue = @team.clues.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clue }
      format.json { render :text => @clue.to_json }
    end
  end

  # GET /clues/new
  # GET /clues/new.xml
  def new
    @clue = @team.clues.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clue }
    end
  end

  # GET /clues/1/edit
  def edit
    @clue = @team.clues.find(params[:id])
  end

  # POST /clues
  # POST /clues.xml
  def create
    @clue = @team.clues.new(params[:clue])

    respond_to do |format|
      if @clue.save
        flash[:notice] = 'Clue was successfully created.'
        format.html { redirect_to([@team, @clue]) }
        format.xml  { render :xml => @clue, :status => :created, :location => @clue }
        format.json { render :text => @clue.to_json }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clue.errors, :status => :unprocessable_entity }
        format.json { render :text => @clue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clues/1
  # PUT /clues/1.xml
  def update
    @clue = @team.clues.find(params[:id])

    respond_to do |format|
      if @clue.update_attributes(params[:clue])
        flash[:notice] = 'Clue was successfully updated.'
        format.html { redirect_to([@team, @clue]) }
        format.xml  { head :ok }
        format.json { render :text => @clue.to_json }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clue.errors, :status => :unprocessable_entity }
        format.json  { render :text => @clue.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clues/1
  # DELETE /clues/1.xml
  def destroy
    @clue = @team.clues.find(params[:id])
    @clue.destroy

    respond_to do |format|
      format.html { redirect_to(team_clues_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  def set_team
    @team = Team.find(params[:team_id])
  end
end
