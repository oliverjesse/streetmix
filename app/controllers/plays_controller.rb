class PlaysController < ApplicationController
  # GET /plays
  # GET /plays.xml
  def index
    # unless (params[:active] == true)
    @plays = Play.all
    # else
    #   @plays = Play.find(:all, :)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @plays }
    end
  end

  # GET /plays/1
  # GET /plays/1.xml
  def show
    @play = Play.find(params[:id])
    @scenario = @play.scenario

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @play }
      format.json { render :text => @play.to_json }
    end
  end

  # GET /plays/new
  # GET /plays/new.xml
  def new
    @play = Play.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @play }
    end
  end

  # GET /plays/1/edit
  def edit
    @play = Play.find(params[:id])
  end

  # POST /plays
  # POST /plays.xml
  # POST /plays.json
  def create
    @play = Play.new({:scenario_id => params[:scenario_id]})

    respond_to do |format|
      if @play.save
        flash[:notice] = 'Play was successfully created.'
        format.html { redirect_to(@play) }
        format.xml  { render :xml => @play, :status => :created, :location => @play }
        format.json { render :text => @play.to_json }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @play.errors, :status => :unprocessable_entity }
        format.json  { render :text => @play.errors.to_json, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /plays/1
  # PUT /plays/1.xml
  def update
    @play = Play.find(params[:id])

    respond_to do |format|
      if @play.update_attributes(params[:play])
        flash[:notice] = 'Play was successfully updated.'
        format.html { redirect_to(@play) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @play.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /plays/1
  # DELETE /plays/1.xml
  def destroy
    @play = Play.find(params[:id])
    @play.destroy

    respond_to do |format|
      format.html { redirect_to(plays_url) }
      format.xml  { head :ok }
    end
  end
end
